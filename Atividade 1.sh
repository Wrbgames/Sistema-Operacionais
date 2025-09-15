# 1 criaçãode grupos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo groupadd desenvolvedores
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo groupadd testadores

# 2 criação de usuarios
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g desenvolvedores dev_senior
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g desenvolvedores dev_junior
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g testadores qa_analyst
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo usermod -aG testadores dev_senior

# 3 definição de senhas
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo passwd dev_senior
Nova senha: 
Redigite a nova senha: 
passwd: senha atualizada com sucesso
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo passwd dev_junior
Nova senha: 
Redigite a nova senha: 
passwd: senha atualizada com sucesso

# 4 estruturas de diretórios
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ /srv/projetos/backend
bash: /srv/projetos/backend: Arquivo ou diretório inexistente
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$  / srv/projetos/backend
bash: /: É um diretório
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo mkdir -p /srv/projetos/backend
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo mkdir -p /srv/projetos/frontend
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo chown -R dev_senior:desenvolvedores /srv/projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo chmod -R 750 /srv/projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l/srv/
ls: opção inválida -- “/”
Tente "ls --help" para mais informações.
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l/ srv/
ls: opção inválida -- “/”
Tente "ls --help" para mais informações.
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l /srv/
total 0

# 5 gerenciamento de permissões
drwxr-x--- 1 dev_senior desenvolvedores 30 set 15 15:25 projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior
dev_junior: comando não encontrado
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior sleep 500 &
[1] 6985
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior: comando não encontrado
login dev_junior
login: talvez não seja possível trabalhar sem o root efetivamente
[1]+  Fim da execução com status 127        dev_junior sleep 500
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo login dev_junior
Senha: 
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.14.0-29-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

Manutenção de Segurança Expandida para Applications não está ativa.

44 as atualizações podem ser aplicadas imediatamente.
3 dessas atualizações são atualizações de segurança padrão.
Para ver as actualizações adicionais corre o comando: apt list --upgradable

11 atualizações de segurança adicionais podem ser aplicadas com ESM Apps.
Saiba mais sobre como ativar o serviço ESM Apps at https://ubuntu.com/esm


The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

# 6 controle de processos
$ sleep 500 &
$ ps aux | grep sleep
dev_jun+    7163  0.0  0.0  17280  2268 pts/1    S    15:37   0:00 sleep 500
dev_jun+    7165  0.0  0.0  17832  2380 pts/1    S+   15:38   0:00 grep sleep
$ sudo kill<PID>                    
-sh: 4: Syntax error: newline unexpected
$ sudo kill <PID>
-sh: 5: Syntax error: newline unexpected
$ sudo kill dev_jun+  
[sudo] senha para dev_junior: 
dev_junior is not in the sudoers file.
$ arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo groupadd desenvolvedores
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo groupadd testadores
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g desenvolvedores dev_senior
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g desenvolvedores dev_junior
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo useradd -m -g testadores qa_analyst
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo usermod -aG testadores dev_senior
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo passwd dev_senior
Nova senha: 
Redigite a nova senha: 
passwd: senha atualizada com sucesso
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo passwd dev_junior
Nova senha: 
Redigite a nova senha: 
passwd: senha atualizada com sucesso
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ /srv/projetos/backend
bash: /srv/projetos/backend: Arquivo ou diretório inexistente
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$  / srv/projetos/backend
bash: /: É um diretório
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo mkdir -p /srv/projetos/backend
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo mkdir -p /srv/projetos/frontend
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo chown -R dev_senior:desenvolvedores /srv/projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo chmod -R 750 /srv/projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l/srv/
ls: opção inválida -- “/”
Tente "ls --help" para mais informações.
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l/ srv/
ls: opção inválida -- “/”
Tente "ls --help" para mais informações.
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ ls -l /srv/
total 0
drwxr-x--- 1 dev_senior desenvolvedores 30 set 15 15:25 projetos
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior
dev_junior: comando não encontrado
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior sleep 500 &
[1] 6985
arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ dev_junior: comando não encontrado
login dev_junior
login: talvez não seja possí-sh: 6: vel trabalhar sem o root efetivamente
[1]+  Fim da execução com statarthur-ubuntu@arthur-ubuntu-VirtualBox:~$: not foundus 127        dev_junior sleep 500

arthur-ubuntu@arthur-ubuntu-VirtualBox:~$ sudo login dev_junior
Senha: 
Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.14.0-29-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro
$ 
Manutenção de Segurança Expandida para Applications não está ativa.
