use strict;
use warnings;

my $arquivo = 'senha.txt';

open(my $fh, '>>', $arquivo) or die "ARQUIVO NÃO ENCONTRADO";

print "Digite exit para Fechar!\n"; 

while(1) 
{
    print "Senha: ";
    my $senha = <STDIN>;
    chomp($senha);
    
    last if lc($senha) eq 'exit';
    
    print $fh $senha . "\n";
  
}

close($fh);
print "As Senhas Foram Salvas em $arquivo!";

#
# Codigo feito por https://github.com/guicomh
#