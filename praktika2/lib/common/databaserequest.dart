///Запросы к БД
abstract class DataBaseRequest{
  

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  
  static String deleteTable(String table)=>'DROP TABLE $table';
  static const String tableRole = 'Role'; //
  static const String tableUsers = 'Users'; //
  static const String tableProvider = 'Provider'; //
  static const String tableTypeProdukt = "Type_Produkt"; //
  static const String tableProdukt="Produkt"; //
  static const String tableSell="Sell"; //
  static const String tableService="Service"; //
  static const String tableMarket="Market";

  static const List<String> tableList =[
    tableRole,
    tableUsers,
    tableProvider,
    tableTypeProdukt,
    tableProdukt,
    tableSell,
    tableService,
    tableMarket
  ];
    static const List<String> tableCreateList =[
    _createTableService,
    _createTableRole,
    _createTableUsers,
    _createTableSell,
    _createTableProvider,
    _createTableTypeProdukt,
    _createTableProdukt,
    _createTabletableMarket

  ];
  static const String _createTableRole =
  'CREATE TABLE "$tableRole" ("id" INTEGER ,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  /// Запрос для создания таблицы Users

  static const String _createTableUsers =
  'CREATE TABLE "$tableUsers" ("id" INTEGER   KEY,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL, "first_name" TEXT NOT NULL, "last_name" TEXT NOT NULL, "middle_name" TEXT ,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "$tableProvider"("id"),PRIMARY KEY("id"));';

  static const String _createTableProvider=
  'CREATE TABLE "$tableProvider"( "id" INTEGER , "name" TEXT NOT NULL UNIQUE, "adres" TEXT NOT NULL, "email" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  
  static const String _createTableSell= 
  'CREATE TABLE "$tableSell"( "id" INTEGER, "adres" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableProdukt =
   'CREATE TABLE "$tableProdukt" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, "id_provider" INTEGER, "id_type" INTEGER,PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_provider") REFERENCES "$tableProvider"("id"), FOREIGN KEY("id_type") REFERENCES "$tableTypeProdukt"("id"));';

   static const String _createTableService =
   'CREATE TABLE "$tableService" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, PRIMARY KEY("id" AUTOINCREMENT));';
   
static const String _createTableTypeProdukt =
   'CREATE TABLE "$tableTypeProdukt" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT));';

static const String _createTabletableMarket =
   'CREATE TABLE "$tableMarket" ("id" INTEGER,"adres" TEXT NOT NULL UNIQUE, "id_stock" INTEGER, FOREIGN KEY("id_stock") REFERENCES "$tableSell"("id"),PRIMARY KEY("id" AUTOINCREMENT));';
}