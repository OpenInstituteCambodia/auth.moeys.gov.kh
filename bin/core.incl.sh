OPT_DEPLOY_TARGET=/opt/gluu/jetty

function war_template_dir() {
    local service=$1

    echo /opt/jetty-*/temp/jetty-localhost-*-${service}.war*.dir/webapp
}
