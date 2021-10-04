<?php
include_once('config.php');
include_once('queries.php');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST,GET,OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, Accept');

$params = $_REQUEST;
$url = $_SERVER['REQUEST_URI'];
$endpoint = parse_url($url)['path'];
$endpoint = trim($endpoint, '/');




$action_type = explode('.', $endpoint)[0];
$action = explode('.', $endpoint)[1];
if ($action) {
    echo DB::init(HOST, USER, PASSWD, DB);
} else die('Не указано action');

if ($action_type == 'get' || $_SERVER['REQUEST_METHOD'] == 'GET') {
    $result = DB::get($action, $params);
    print(json_encode($result, JSON_UNESCAPED_UNICODE));
} else if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $post_data = json_decode(file_get_contents("php://input"), true);
    print($post_data);
    switch($action){
        case 'course':
            $course_id = DB::add('course', $post_data['name'],$post_data['category'], $post_data['address']?? '', $post_data['description']?? '');
            DB::add('course_user', $course_id, $post_data['user'], 'leader');
            break;
        case 'course_user':
            DB::add('course_user', $post_data['course_id'],$post_data['user'],$post_data['role']);
            break; 
    }
}