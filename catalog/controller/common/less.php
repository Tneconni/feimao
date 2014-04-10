<?php
class ControllerCommonLess extends Controller {

    public function index() {

        if( COMPILE_LESS ){

            $less = new lessc();

            try {
                $cssFile = DIR_TEMPLATE . '/default/stylesheet/style.css';
                $lessFile = DIR_TEMPLATE . '/default/stylesheet/style.less';
                $less->checkedCompile( $lessFile, $cssFile );


            } catch (exception $e) {
                echo "fatal error: " . $e->getMessage();
            }
        }

    }

}

?>