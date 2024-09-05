<?php
    include_once('conn.php');
    session_start();

    $method = $_SERVER['REQUEST_METHOD'];

    if ($method === 'GET') {
        $pedidosQuery = $conn->query('SELECT * FROM pedidos');

        $pedidos = $pedidosQuery->fetchAll();

        $pizzas = [];

        foreach ($pedidos as $pedido) {
            $pizza = [];
            $pizza['id'] = $pedido['id_pizza'];

            $pizzaQuery = $conn->prepare('SELECT * FROM pizzas WHERE id = :id_pizza');
            $pizzaQuery->bindParam(':id_pizza', $pizza['id']);
            $pizzaQuery->execute();
            $pizzaData = $pizzaQuery->fetch(PDO::FETCH_ASSOC);

            $bordaQuery = $conn->prepare('SELECT * FROM bordas WHERE id = :id_borda');
            $bordaQuery->bindParam(':id_borda', $pizzaData['id_borda']);
            $bordaQuery->execute();
            $bordaData = $bordaQuery->fetch(PDO::FETCH_ASSOC);
            $pizza['borda'] = $bordaData['nome'];

            $massaQuery = $conn->prepare('SELECT * FROM massas WHERE id = :id_massa');
            $massaQuery->bindParam(':id_massa', $pizzaData['id_massa']);
            $massaQuery->execute();
            $massaData = $massaQuery->fetch(PDO::FETCH_ASSOC);
            $pizza['massa'] = $massaData['nome'];

            $saboresQuery = $conn->prepare('SELECT * FROM pizzas_sabor WHERE id_pizza = :id_pizza');
            $saboresQuery->bindParam(':id_pizza', $pizza['id']);
            $saboresQuery->execute();
            $saboresData = $saboresQuery->fetchAll(PDO::FETCH_ASSOC);

            $saboresDaPizza = [];
            foreach ($saboresData as $sabor) {
                $saborQuery = $conn->prepare('SELECT * FROM SABORES WHERE id = :id_sabor');
                $saborQuery->bindParam(':id_sabor', $sabor['id_sabor']);
                $saborQuery->execute();
                $saborPizza = $saborQuery->fetch(PDO::FETCH_ASSOC);

                array_push($saboresDaPizza, $saborPizza['nome']);
            }

            $pizza['sabores'] = $saboresDaPizza;
            $pizza['status'] = $pedido['id_status'];

            array_push($pizzas, $pizza);
        }

        $statusQuery = $conn->query('SELECT * FROM status');
        $status = $statusQuery->fetchAll();

    } else if ($method === 'POST') {
        $type = $_POST['type'];
        
        if ($type == 'delete') {
            $pizzaId = $_POST['id'];

            $deleteQuery = $conn->prepare('DELETE FROM pedidos WHERE id_pizza = :id_pizza');
            $deleteQuery->bindParam(':id_pizza', $pizzaId, PDO::PARAM_INT);
            $deleteQuery->execute();

            $_SESSION['msg'] = 'Pedido removido com sucesso!';
            $_SESSION['status'] = 'success';

        } else if ($type == 'update') {
            $pizzaId = $_POST['id'];
            $statusId = $_POST['status'];

            $updateQuery = $conn->prepare('UPDATE pedidos SET id_status = :status_id WHERE id_pizza = :pizza_id');
            $updateQuery->bindParam(':pizza_id', $pizzaId, PDO::PARAM_INT);
            $updateQuery->bindParam(':status_id', $statusId, PDO::PARAM_INT);
            $updateQuery->execute();

            $_SESSION['msg'] = 'Pedido atualizado com sucesso!';
            $_SESSION['status'] = 'success';
            
            header('Location: ../dashbord.php');
            exit;
        }
    }
?>