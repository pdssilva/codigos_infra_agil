class exercicio {

case $::osfamily {
       'RedHat': {
             $pacotes = ['cronie','git','httpd']
                 }

       'Debian': {
             $pacotes = ['git','cron','apache2']
                 }

 }


package { $pacotes:
             ensure => present,
        }


$user = ['devops','jorge','judith']


user { $user:
       ensure  => present,
     } 


file{"/root/.bashrc": #aqui o caminho do agent onde esta o arquivo
    source => "puppet:///modules/exercicio/bashrc",
    ensure => present,
      }

      




}
