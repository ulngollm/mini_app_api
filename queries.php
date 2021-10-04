<?php
class DB {
    public static $db_connect;

    public static function init($host, $user, $passwd, $db_name){
        self::$db_connect = mysqli_connect($host, $user, $passwd, $db_name) or die(mysqli_connect_error());
    }

    public static $queries = [
        "get"=>[
            'user'=>"SELECT * FROM user where vk_id='%d'",
            'course_list'=>"SELECT course.id, course.name, course.description, course_category.name as category from course JOIN course_category ON course.category=course_category.id where course.id IN(SELECT course_id from course_user where user_id='%d' and role='%s')",
            'course_category'=>"SELECT * FROM course_category",
            'course_students'=>"SELECT user_id from course_user where course_id='%d' and role='student'",
            'course_by_name'=>"SELECT * FROM course where name LIKE '%%%s%%'"
        ],
        "add"=>[
            'course'=>"INSERT INTO course(name, category, address, description) VALUES ('%s','%d','%s','%s')",
            'course_user'=>"INSERT INTO course_user(course_id, user_id, role) VALUES ('%d','%d','%s')",
            'user'=>"INSERT INTO users value('%s')",
            'progress'=>""
        ]

    ];

    public static function get(string $action, array $params){//get.user, get.course
        $query = vsprintf(self::$queries['get'][$action], $params);
        $result = mysqli_query(self::$db_connect, $query) or die(mysqli_error(self::$db_connect));
        return mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    public static function add(string $action, ...$params){
        $query = sprintf(self::$queries['add'][$action], ...$params);
        $result = mysqli_query(self::$db_connect, $query);
        echo $result;
        return $result? mysqli_insert_id(self::$db_connect):"error";
    }
    
    
}


