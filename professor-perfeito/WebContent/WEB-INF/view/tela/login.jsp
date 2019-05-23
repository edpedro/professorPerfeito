<div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog modal-sm">

      <!-- Modal content no 1-->
      <div class="modal-content" style="bottom:150px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title text-center form-title">Seja bem vindo</h4>
        </div>
        <div class="modal-body padtrbl">

          <div class="login-box-body">
            <a href="#" class="fa fa-facebook"></a>
            <span>ou</span>
            <a href="#" class="fa fa-google"></a>
            <p class="login-box-msg">Media social</p>            
            <div class="form-group">
              <form action="efetuarLogin" method="post" id="loginForm" name="loginForm">
                <div class="form-group has-feedback">
                  <!----- Nome -------------->
                  <input class="form-control" placeholder="Email" name="email" id="email" type="email" autocomplete="off" />
                  <span style="display:none;font-weight:bold; position:absolute;color: red;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginid"></span>
                  <!---Alredy exists  ! -->
                  
                </div>
                <div class="form-group has-feedback">
                  <!----- Senha -------------->
                  <input class="form-control" placeholder="Senha" name="senha" id="senha" type="password" autocomplete="off" />
                  <span style="display:none;font-weight:bold; position:absolute;color: grey;position: absolute;padding:4px;font-size: 11px;background-color:rgba(128, 128, 128, 0.26);z-index: 17;  right: 27px; top: 5px;" id="span_loginpsw"></span>
                  <!---Alredy exists  ! -->
                  
                </div>
                <div class="row">
                  <div class="col-xs-12">
                    <div class="checkbox icheck">
                      <label>
                                <input type="checkbox" id="loginrem" > Lembre de mim
                              </label>
                    </div>
                  </div>
                  <div class="col-xs-12">
                    <button type="submit" class="btn btn-green btn-block btn-flat" onclick="userlogin()">Entrar</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>