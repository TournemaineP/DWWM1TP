<?php 
    include 'db.connexion.php';
?>

<!DOCTYPE html>
<html>
    <head>
    <link href="styles.css" rel="stylesheet">
    </head>

    <body><header>
        <h1>TODOLIST</h1></header>
        <form action="data.php" method="get">
            <input type="text" id="todo-data" name="todo-data" placeholder="Entrer une tache" />
            <input type="hidden" name="action" value="add" />
        </form>
<pre>
        <?php
            $req = mysqli_query($conn, 'SELECT * FROM todolist ORDER BY todo;');

            while($row = mysqli_fetch_object($req)) {
                echo '<a href="data.php?action=delete&id='.$row->id.'">'.$row->todo.'</a>   ';
                
            }
            
        ?>
</pre>
<div class="footer"><p>FOOTER</p></footer>
    </body>

</html>