<%-- 
    Document   : movimentoestoque
    Created on : 09/06/2023, 12:26:52
    Author     : maico
--%>
<%-- 
    Document   : movimentoestoque
    Created on : 05/06/2023, 23:54:26
    Author     : maico
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>

               <h2>Movimento Estoque</h2>
               <table id="datatable" class="display">
                   <thead>
                       <tr>
                           <th align="left">ID </th>
                           <th align="left">Entrada/Saida</th>
                           <th align="left">Documento</th>
                           <th align="left">Data</th>
                           <th align="left">Quantidade</th>
                           <th align="left">Valor Movimento</th>
                           <th align="left">Produto</th>
                           <th align="left">Funcionario</th>
                           <th align="left">Movimento </th>
                           <th align="right"></th>
                           <th align="right"></th>
                       </tr>
                   </thead>
                   <tbody>
            <c:forEach var="movimentoestoque" items="${movimentoestoques}">
                <tr>
                    <td align="left">${movimentoestoque.idMovimento}</td>
                    <td align="left">${movimentoestoque.entradaSaida}</td>
                    <td align="left">${movimentoestoque.documento}</td>
                    <td align="left">${movimentoestoque.data}</td>
                    <td align="left">${movimentoestoque.quantidade}</td>
                    <td align="left">${movimentoestoque.valorMovimento}</td>
                    <td align="left">${movimentoestoque.produto.idProduto}</td>
                    <td align="left">${movimentoestoque.funcionario.nomeFuncionario}</td>
                    <td align="left">${movimentoestoque.tipomovimento.descricao}</td>
                    
                    

                    <td align="center">
                        <a href=
                           "${pageContext.request.contextPath}/MovimentoEstoqueExcluir?idMovimento=${movimentoestoque.idMovimento}">
                            <button class="btn btn-group-lg 
                                    <c:out value="${produto.idProduto == 'produto' ? 'btn-danger': 'btn-success'}"/>">
                                <c:out value="${produto.idProduto == 'produto' ? 'Inativar' : 'Excluir'}"/>
                            </button>
                            </a>
                    </td>
                            <td align="center">   
                                <a href=
                                   "${pageContext.request.contextPath}/MovimentoEstoqueCarregar?idMovimento=${movimentoestoque.idMovimento}">
                                    <button class="btn btn-group-lg btn-success"/>Alterar</button>
                                </a>
                               </td>       
                        </tr>
            </c:forEach>    
                   </tbody>
               </table>
               
               <div align="center">
                   <a href="${pageContext.request.contextPath}/MovimentoEstoqueNovo">Novo</a>
                   <a href="index.jsp">Voltar à Página Inicial </a>
               </div>
               
                       <script>
            
            $(document).ready(function(){
              console.log('entrei ready');  
                $('#datatable').DataTable({
                   "oLanguage":{
                       "sProcessing": "Processando...",
                       "sLengthMenu": "Mostrar _MENU_registros", 
                       "sZeroRecords": "Nenhum registro encontrado.",
                       "sInfo": "Mostrando de _START_até _END_de _TOTAL_registros",
                       "sInfoEmpty": "Mostrando de 0 até 0 de 0 registros",
                       "sInfoFiltered": "",
                       "sInfoPostFix": "",
                       "sSearch": "Buscar:",
                       "sUrl": "",
                       
                       "oPaginate": {
                           "sFirst": "Primeiro",
                           "sPrevious": "Anterior",
                           "sNext": "Seguinte",
                           "sLast": "Último"
                       }
                   }          
               });
            });     
        </script>
        
         <%@include file="/footer.jsp"%>