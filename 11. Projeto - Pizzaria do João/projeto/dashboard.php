<?php
    include_once('templates/header.php');
?>
    <div id="main-container">
        <div class="row">
            <div class="cold-md-12">
                <h2>Gerenciar pedidos:</h2>
            </div>
            <div class="cold-md-12 table-container">
                <div class="table">
                    <thead>
                        <tr>
                            <th scope="col"><span>Pedido</span></th>
                            <th scope="col"><span>Bordas</span></th>
                            <th scope="col"><span>Massas</span></th>
                            <th scope="col"><span>Sabores</span></th>
                            <th scope="col"><span>Status</span></th>
                            <th scope="col"><span>Ações</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Cheddar</td>
                            <td>Catupiry</td>
                            <td>Chocolate</td>
                            <td>
                                <form action="process/order.php" method="POST" class="form-group update-form">
                                    <input type="hidden" name="type" value="update">
                                    <input type="hidden" name="id" value="1">
                                    <select name="status" class="select.form-control status-input">
                                        <option value="">Entrega</option>
                                    </select>
                                    <button type="submit" class="update-btn">
                                        <i class="fas fa-sync-alt"></i>

                                    </button>
                                </form>
                            </td>
                            <td>
                                <form action="process/orders;php" method="POST">
                                    <input type="hidden" name="type" value="delete">;
                                    <input type="hidden" name="id" value="1">;
                                    <button type="submit" class="delete-btn">
                                        <i class="fas fa-times">
                                            
                                        </i>

                                    </button>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </div>
            </div>
        </div>
    </div>
<?php
    include_once('templates/footer.php');
?>