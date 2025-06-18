# /etc/wsl.conf
# [network]
# generateResolvConf=false

# /etc/resolv.conf
# nameserver=8.8.8.8

# $sudo chattr +i /etc/resolv.conf

# add for proxy
export hostip=$(ip route | grep default | awk '{print $3}')
export hostport=10808
alias proxy='
    export https_proxy="http://${hostip}:${hostport}";
    export http_proxy="http://${hostip}:${hostport}";
    export all_proxy="http://${hostip}:${hostport}";
'
alias unproxy='
    unset https_proxy;
    unset http_proxy;
    unset all_proxy;
'
alias proxy_apt='
    echo -e "Acquire::http::Proxy \"http://${hostip}:${hostport}\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo -e "Acquire::https::Proxy \"http://${hostip}:${hostport}\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
'
alias unproxy_apt='
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
'

