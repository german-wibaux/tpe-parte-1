{include file="header.tpl"}

<div class="container">
    <div class="caja">

        <div class="container">

            <div class="row">
                <div class="col-6">

                    <h2>Alta de Materias</h2>
                    <form method="post" action="agregar">
                        <div class="form-group">
                            <label for="nombreForm">Nombre</label>
                            <input type="text" class="form-control" id="nombreForm" name="nombreForm">
                        </div>

                        <div class="form-group">
                            <label for="modalidadForm">Modalidad</label>
                            <select class="form-control" id="modalidadForm" name="modalidadForm">

                                {foreach from=$Modalidades item=modalidad}
                                    <option value="{$modalidad['idModalidad']}">{$modalidad['nombreModalidad']}</option>
                                {/foreach}

                            </select>
                        </div>
                        <div class="form-group">
                            <label for="descripcionForm">Descripcion</label>
                            <input type="text" class="form-control" id="descripcionForm" name="descripcionForm">
                        </div>
                        <div class="form-group">
                            <label for="anioForm">Año</label>
                            <select class="form-control" id="anioForm" name="anioForm">
                                <option value="1">Primer Año</option>
                                <option value="2">Segundo Año</option>
                                <option value="3">Tercer Año</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="divisionForm">Division</label>
                            <select class="form-control" id="divisionForm" name="divisionForm">
                                <option value="1">Primera</option>
                                <option value="2">Segunda</option>
                                <option value="3">Tercera</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Crear Materia</button>
                    </form>


                    <h1>{$Titulo}</h1>

                    <div class="container">
                        <ul class="list-group">
                            {foreach from=$Materias item=materia}
                                <div class="caja">
                                    <div class="row">
                                        <div class="col-6">

                                            <p>{$materia['nombreMateria']}</p>
                                            <p>{$materia['descripcionMateria']}</p>
                                            <p>Año: {$materia['anio']}°
                                                Division: {$materia['division']}°</p>

                                        </div>
                                        <div class="col-6">

                                            <div class="botonEditar"><a href="editar/{$materia['idMateria']}">EDITAR</a>
                                            </div>
                                            <div class="botonBorrar"><a href="borrar/{$materia['idMateria']}">BORRAR</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/foreach}
                        </ul>

                    </div>
                </div>
                <!-- Alta de modalidades


                <div class="col-6">
                    <h2>Alta de Modalidades</h2>
                    <form method="post" action="agregarModalidad">
                        <div class="form-group">
                            <label for="nombreModalidadForm">Nombre</label>
                            <input type="text" class="form-control" id="nombreModalidadForm" name="nombreModalidadForm">
                        </div>


                        <button type="submit" class="btn btn-primary">Crear Modalidad</button>
                    </form>

                    <h1>Lista de Modalidades</h1>

                    <div class="container">
                        <ul class="list-group">
                            {foreach from=$Modalidades item=modalidad}

                                <div class="caja">
                                    <div class="row">
                                        <div class="col-6">

                                            <p>{$modalidad['nombreModalidad']}</p>

                                        </div>
                                        <div class="col-6">

                                            <div class="botonEditar"><a
                                                        href="editarModalidad/{$modalidad['idModalidad']}">EDITAR</a>
                                            </div>
                                            <div class="botonBorrar"><a
                                                        href="borrarModalidad/{$modalidad['idModalidad']}">BORRAR</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            {/foreach}
                        </ul>

                    </div>
                </div>
            </div>


            <!-- Fin Alta de Modalidades -->

{include file="footer.tpl"}
