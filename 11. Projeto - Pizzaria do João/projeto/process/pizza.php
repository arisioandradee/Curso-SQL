<?php
    include_once('process/conn.php');

    $method = $_SERVER['REQUEST_METHOD'];

    if($method === 'GET') {
        // Consulta a tabela 'bordas'
        $bordasQuery = $conn->query('SELECT * FROM bordas');
        $bordas = $bordasQuery->fetchAll();

        // Consulta a tabela 'massas'
        $massasQuery = $conn->query('SELECT * FROM massas');
        $massas = $massasQuery->fetchAll();

        // Consulta a tabela 'sabores' (corrigido de BORDAS para SABORES)
        $saboresQuery = $conn->query('SELECT * FROM sabores');
        $sabores = $saboresQuery->fetchAll();

        // Exibe os resultados de 'sabores'
        print_r($sabores); 
        exit;
    } else if($method === 'POST') {
        
        $data = $_POST;

        $borda = $data['borda'];
        $massa = $data['borda'];
        $sabor = $data['borda'];

        if(count($sabores) > 3){
            $_SESSION['msg'] = 'Selecione no máximo três sabores!';
            $_SESSION['status'] = 'warning';
        } else {
            // salvando borda e massa na pizza
            $stmt = $conn->prepare('INSERT INTO pizzas (borda_id, massa_id) VALUES (:borda, :massa)');

            $stmt->bindParam(':borda', $borda, PDO::PARAM_INT);
            $stmt->bindParam(':massa', $massa, PDO::PARAM_INT);

            $stmt->execute();

            $pizzaid = $conn->lastInsertId();

            $stmt = $conn->prepare('INSERT INTO pizza_sabot (id_pizza, id_sabor)');

            foreach($sabores as $sabor) {
                $stmt->bindParam(':pizza', $pizzaid, PDO::PARAM_INT);
                $stmt->bindParam(':sabor', $sabor, PDO::PARAM_INT);

                $stmt->execute();
            }

            $stmt = $conn->prepare('INSERT INTO pedidos (id_pizza, id_status) VALUES (:pizza,:status)');

            $statusId = 1;

            $stmt->bindParam(':pizza', $statusId);
            $stmt->bindParam(':status', $statusId);

            //Exibir mensagem de sucesso
            $_SESSION['msg'] = 'Pedido realizado com sucesso';
            $_SESSION['status'] = 'sucess';
        }

        header('Location: ..');
    }
?>
