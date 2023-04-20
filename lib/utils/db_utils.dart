import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../commons/global.dart';

class DBUtils {
  static DBUtils? _instance;
  Database? db;

  factory DBUtils.getInstance() => _getInstance();

  static const String subjectsTable = "subjects";
  static const String topicTable = "topic";
  static const String questionTable = "question";
  static const String freeTable = "free";
  static const String notesTable = "notes";
  static const String mistakesTable = "mistake";
  static const String purchaseTable = "purchase";
  static const String testTable = "test";
  static const String scoreTable = "score";

  static const String telephoneTable = "telephone"; //TODO:账户登录
  static const String zx_machine_config = "zx_machine_config"; //TODO:新增云手机配置
  static const String zx_package = "zx_package"; //TODO:新增云手机配置下的天数

  static const String adductionPhoneTable = "adductionPhone"; //TODO：添加云手机
  static const String adductionVipType = "adductionVipType"; //TODO：新增云手机头部tab列表

  static const String perGroupManager = "perGroupManager"; //TODO：分组管理列表
  static const String notesPerGroup = "notesPerGroup"; //TODO：分组管理我新建立的文件夹列表
  static const String zx_wallet = "zx_wallet"; //TODO：我的钱包

  static const String zx_order_recharge = "zx_order_recharge"; //TODO：我的钱包 充值账单表
  static const String zx_order_package = "zx_order_package"; //TODO：我的订单 充值账单表
  static const String zx_machine = "zx_machine"; //TODO：我购买的设备列表

  //TODO:更新zx_package packageCode字段；
  static const NEW_DB_VERSION = 2;

  static _getInstance() {
    _instance ??= DBUtils._internal();
    return _instance;
  }

  DBUtils._internal() {
    if (db == null) {
      initDB();
    }
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentsDirectory.path, Global.config!.dbName);
    var newIsExists = await File(path).exists();
    if (!newIsExists) {
      await _copyAssetDB();
    }

    upgradeDatabase(path);

    // int currentV = (await db?.getVersion() ?? 0);
    // if (currentV == 0) {
    //   db = await openDatabase(path, version: 1,
    //       onCreate: (Database db, int version) async {
    //     var batch = db.batch();
    //     _onCreate(batch, version);
    //     await batch.commit();
    //     db.setVersion(1);
    //   }, onUpgrade: (Database db, int oldVersion, int newVersion) {
    //     try {} catch (e) {}
    //   }, onDowngrade: onDatabaseDowngradeDelete);
    // } else if (currentV >= 1 && currentV < NEW_DB_VERSION) {
    //   upgradeDatabase();
    // }

    // try {
    //   await _copyMusic(documentsDirectory, "close_your_eyes.mp3");
    //   await _copyMusic(documentsDirectory, "forest_camping.mp3");
    //   await _copyMusic(documentsDirectory, "gentle_tides.mp3");
    //   await _copyMusic(documentsDirectory, "help_with_rest.mp3");
    //   await _copyMusic(documentsDirectory, "purifying_the_mind.mp3");
    //   await _copyMusic(documentsDirectory, "rainstorm.mp3");
    // } catch (e) {
    //   e.toString();
    // }
  }

  _copyAssetDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, Global.config!.dbName);

    ByteData data =
        await rootBundle.load(join("assets", Global.config!.dbName));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes(bytes);
    // print("db write to local data dir");
  }

  _onCreate(Batch db, int version) {
    db.execute(
        'CREATE TABLE telephone (id INTEGER PRIMARY KEY, teleNumber INTEGER, telePassword TEXT, created INTEGER, token TEXT)');
    db.execute(
        'CREATE TABLE adductionPhone (vipType TEXT, phoneDes TEXT, itemImage TEXT, itemTitle TEXT, itemSubTitle TEXT, itemCurrentPrice TEXT, itemOriginalPrice TEXT, itemPurchaseNumber INTEGER)');

    db.execute('CREATE TABLE adductionVipType (vipType TEXT NOT NULL)');

    db.execute(
        'CREATE TABLE $zx_machine_config (id INTEGER PRIMARY KEY, configName TEXT NOT NULL, configDesc TEXT NOT NULL, address TEXT, os TEXT, ram INTEGER, rom INTEGER, remark TEXT, createTime INTEGER, sort INTEGER )');

    db.execute(
        'CREATE TABLE $zx_package (id INTEGER PRIMARY KEY, configId INTEGER, packageTitle TEXT, subTitle TEXT, days INTEGER, originalPrice REAL, currentPrice REAL, remark TEXT, creatTime INTEGER, sort INTEGER )');

    db.execute(
        'CREATE TABLE $zx_wallet (id INTEGER PRIMARY KEY, userId INTEGER, surplus REAL, createTime INTEGER, updateTime INTEGER, remark TEXT )');

    db.execute(
        'CREATE TABLE $zx_order_recharge (id INTEGER PRIMARY KEY, userId INTEGER NOT NULL, orderCode TEXT, money REAL, createTime INTEGER, remark TEXT, orderStatus INTEGER, rechargeType INTEGER)');

    db.execute(
        'CREATE TABLE $zx_order_package (id INTEGER PRIMARY KEY, userId INTEGER NOT NULL, orderCode TEXT, money REAL, createTime INTEGER, remark TEXT, orderStatus INTEGER, packageCode TEXT, packageTitle TEXT, number INTEGER)');

    db.execute(
        'CREATE TABLE $zx_machine (id INTEGER PRIMARY KEY, userId INTEGER NOT NULL, machineCode TEXT, machineName TEXT, expireTime INTEGER, createTime INTEGER, groupId INTEGER, configId INTEGER)');

    db.execute(
        'CREATE TABLE perGroupManager (id INTEGER PRIMARY KEY, perGroupName TEXT, isAdd INTEGER, imageUrl TEXT,title TEXT, subTitleID TEXT, surplusTime TEXT, cloudVMID TEXT, screenHot TEXT, groupId INTEGER)');

    db.execute(
        'CREATE TABLE notesPerGroup (id INTEGER PRIMARY KEY, perGroupName TEXT, groupId INTEGER, userId INTEGER, groupNum INTEGER)');

    db.execute(
        'CREATE TABLE topic (id INTEGER PRIMARY KEY, topicName TEXT, sec integer, smallTopicName TEXT, subjectId INTEGER)');
    db.execute(
        'CREATE TABLE subjects (id INTEGER PRIMARY KEY, subject TEXT, textSubject TEXT, des TEXT, versionCode integer, questionCount integer, topicCount integer)');
    db.execute(
        'CREATE TABLE score (id INTEGER PRIMARY KEY, typeName TEXT, progress REAL, time INTEGER, created INTEGER, updated INTEGER, answered integer, scoreValue real, subjectId INTEGER)');
    db.execute(
        'CREATE TABLE mistake (id INTEGER PRIMARY KEY, questionId text NOT NULL, mistakeNumb integer, topicName TEXT, subjectId INTEGER)');
    db.execute(
        'CREATE TABLE notes (id INTEGER PRIMARY KEY, questionId TEXT, topicName TEXT, scoreId INTEGER, userAnswer TEXT, state INTEGER, created INTEGER, updated INTEGER, subjectId INTEGER)');
    db.execute(
        'CREATE TABLE purchase (transactionId integer NOT NULL, originalTransactionId integer, itemId integer, productId text, purchaseDateMs integer, expiresDate integer, subjectId INTEGER)');
    db.execute(
        'CREATE TABLE question (id TEXT, question TEXT, choices TEXT, answers TEXT, explanation TEXT, level INTEGER, image TEXT, audio TEXT, video TEXT, model TEXT, topicId INTEGER, topicName TEXT, state INTEGER, created INTEGER, updated INTEGER, subjectId INTEGER)');
  }

  //===================================================example
  ///TODO:https://cn.etsoutdoors.com/497367-how-do-you-upgrade-a-XJGFWM
  /// Create tables
  void _createTableCompanyV1(Batch batch) {
    batch.execute('DROP TABLE IF EXISTS Company');
    batch.execute(
        'CREATE TABLE Company ( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT )');
  }

  // First version of the database
  _onCreateFirst() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentsDirectory.path, Global.config!.dbName);
    var newIsExists = await File(path).exists();
    if (!newIsExists) {
      await _copyAssetDB();
    }
    db = await openDatabase(path, version: 1, onCreate: (db, version) async {
      var batch = db.batch();
      _createTableCompanyV1(batch);
      await batch.commit();
    }, onDowngrade: onDatabaseDowngradeDelete);
  }

  /// Let's use FOREIGN KEY constraints
  Future onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  /// Create Company table V2
  void _createTableCompanyV2(Batch batch, String tableName, String queryExe) {
    batch.execute('DROP TABLE IF EXISTS $tableName');
    batch.execute(queryExe);
    // batch.execute('DROP TABLE IF EXISTS Company');
    // batch.execute(
    //    'CREATE TABLE Company ( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, description TEXT )');
  }

  /// Create Employee table V2
  void _createTableEmployeeV2(Batch batch) async {
    batch.execute('DROP TABLE IF EXISTS Employee');
    batch.execute(
        'CREATE TABLE Employee ( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, companyId INTEGER, FOREIGN KEY (companyId) REFERENCES Company(id) ON DELETE CASCADE )');
  }

  /// Update Company table V1 to V2
  void _updateTableCompanyV1toV2(
      Batch batch, String tableName, String queryExe) {
    batch.execute(queryExe);
  }

  /// Upgrade database
  void upgradeDatabase(String path) async {
    // 2nd version of the database
    db = await openDatabase(path,
        // onConfigure: onConfigure,
        version: NEW_DB_VERSION, onCreate: (Database db, int version) async {
      var batch = db.batch();
      // We create all the tables
      _onCreate(batch, version);
      // _createTableCompanyV2(batch, zx_package,
      //     'CREATE TABLE $zx_package (id INTEGER PRIMARY KEY, configId INTEGER, packageTitle TEXT, subTitle TEXT, days INTEGER, originalPrice REAL, currentPrice REAL, remark TEXT, creatTime INTEGER, sort INTEGER, packageCode TEXT )');
      // _createTableEmployeeV2(batch);
      await batch.commit();
      db.setVersion(NEW_DB_VERSION);
    }, onUpgrade: (db, oldVersion, newVersion) async {
      var batch = db.batch();
      //TODO:assets下db默认version为1
      if (oldVersion == 1) {
        // We update existing table and create the new tables
        _updateTableCompanyV1toV2(
            batch, zx_package, 'ALTER TABLE $zx_package ADD packageCode TEXT');
        // _createTableEmployeeV2(batch);
      }
      await batch.commit();
      db.setVersion(NEW_DB_VERSION);
    }, onDowngrade: onDatabaseDowngradeDelete);
  }
}
