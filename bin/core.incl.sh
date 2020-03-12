OPT_GLUU_SERVER="/opt/gluu-server"

function war_template_dir() {
    local service=$1

    echo ${OPT_GLUU_SERVER}/opt/jetty-*/temp/jetty-localhost-*-${service}.war*.dir/webapp
}
