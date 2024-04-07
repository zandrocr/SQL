use cadastro;
/* Cardinalidade podendo ser simples ou multlipa */

/* um-pra-um = 1-1 
uma entidade escolhida como dominante recebe chave estrangeira da entitade B 
*/

/* um-pra-muitos = 1-n 
chave do lado 1 e tranferida para as entidades n
*/

/* muitos-pra-muitos = n-n
é criado um novo relacionamento onde esse recebe a chave da entidade A e B
 */

/* cliente - compra - produto = muitos - para - muitos 
abre o relacionamento compra onde recebe a chave do cliente e uma ou varios chaves de produtos 
*/

/*MyISAM
InnoDB
XtraDB*/