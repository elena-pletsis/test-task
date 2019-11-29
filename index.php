<?php 
$mysqli = new mysqli('localhost', 'root', '', 'test-task');
$result = $mysqli->query("SELECT * FROM categories");

$categories_list = array();

//заполняем categories_list значениями из БД
while ($row = mysqli_fetch_assoc($result)) {
	array_push($categories_list, $row);
}

// рекурсивная функция в параметры массив всех элементов и идентификатор текущего родителя (Null) 
function buildTree(array $elements, $parentId = Null) {
	//массив детей
    $branch = array();
    //перебор всех эл-в
    foreach ($elements as $element) {
    	//если parent_id эл-та соотв. текущему родительскому идентификатору, поместить эл-т в $branch 
        if ($element['parent_id'] == $parentId) {
        	//рекурсивно вызывается для определения всех детей
        	$children = buildTree($elements, $element['id']);
            if ($children) {
                $element['children'] = $children;
            }
            $branch[] = $element;
        }
    }
    return $branch;
}

$tree = buildTree($categories_list);
echo '<pre>',print_r($tree),'</pre>';
?>