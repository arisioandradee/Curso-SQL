<?php
    include_once('templates/header.php');
    include_once('process/conn.php');
?>
    <div id="main-banner">
        <h1>Faça seu pedido</h1>
    </div>
    <div id="main-container">
        <div id="container">
            <div class="wor">
                <div class="col-md-12">
                    <h2>Monte a pizza como desejar: </h2>
                    <form action="process/pizza.php" method="POST" id="pizza-form">
                        <div class="form-group">
                            <label for="borda">
                                Borda:
                            </label>
                            <select name="borda" id="borda" class='form-control'>
                                <option value="">Selecione a borda da pizza:</option>
                                <?php foreach($bordas as $borda): ?>
                                    <option value="<?= $borda['id'] ?>"><?= $borda['nome'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="massa">
                                Massa:
                            </label>
                            <select name="massa" id="massa" class='form-control'>
                                <option value="">Selecione a massa da pizza:</option>
                                <?php foreach($sabores as $massa): ?>
                                    <option value="<?= $massa['id'] ?>"><?= $massa['nome'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sabores">
                                Sabores: (Máximo 3)
                            </label>
                            <select multiple name="sabores[]" id="sabores" class='form-control'>
                                <?php foreach($sabores as $sabor): ?>
                                    <option value="<?= $sabor['id'] ?>"><?= $sabor['nome'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" class='btn btn-primary' value='Fazer pedido'>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


<?php
    include_once('templates/footer.php');
?>