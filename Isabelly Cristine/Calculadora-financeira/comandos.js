function Resultado(){
    var nomeUsuario = nome.value;
    var hectare = Number(tamanho.value);
    var imposto = Number(valor.value);
    var tipo_plantacao = plantacao.value;
    var lucro_por_hectare = 0;
    var custo_por_hectare = 0;
    var totalEconomizado = 0;
    var economia_imposto = 0;
    var total_lucro = 0;
    var total_custo = 0;
    var gasto_custo = 0;
    var perda_lucro = 0;

    if(tipo_plantacao == "cana-de-açucar"|| tipo_plantacao == "cana-de-açúcar" || tipo_plantacao == "Cana-de-açucar" || tipo_plantacao =="Cana-de-açúcar" ) {
        lucro_por_hectare = 13840;
        custo_por_hectare = 12780;
        total_lucro = lucro_por_hectare * hectare;
        total_custo = custo_por_hectare * hectare;
        economia_imposto = imposto * 0.6;
        gasto_custo = total_custo * 0.061;
        perda_lucro = total_lucro * 0.061;

        Resposta.innerHTML = `<h1>Olá ${nomeUsuario}, parece que escolheu a plantação de ${tipo_plantacao}!</h1>
        <h3>
          Você tem um total de R$${total_lucro}, parece ser muito!! Mas a sua plantação também tem um custo de R$${total_custo}.
          <br>
          Mas infelizmente, esses numeros podem ser prejudicados se uma queimada acontecer, te causando uma perda no lucro de R$${perda_lucro}, sem contar o fator de precisar refazer todos os custos, que girariam em torno de um adicional de ${gasto_custo}.
          <br>
          Agora, utilizando o nosso sistema, você não teria que se preocupar com isso. De acordo com a Lei nº 11.196/2005 (lei do bem) os impostos podem ser diminuidos em até 60% com formas de prevenção biodegradáveis, estimando um valor de R${economia_imposto} na sua cobrança de impostos!!
        </h3>`

    } else if(tipo_plantacao == "milho"|| tipo_plantacao == "Milho"){
        lucro_por_hectare = 4250;
        custo_por_hectare = 3500;
        total_lucro = lucro_por_hectare * hectare;
        total_custo = custo_por_hectare * hectare;
        economia_imposto = imposto * 0.6;
        gasto_custo = total_custo * 0.061;
        perda_lucro = total_lucro * 0.061;

        Resposta.innerHTML = `<h1>Olá ${nomeUsuario}, parece que escolheu a plantação de ${tipo_plantacao}!</h1>
        <h3>
          Você tem um total de R$${total_lucro}, parece ser muito!! Mas a sua plantação também tem um custo de R$${total_custo}.
          <br>
          Mas infelizmente, esses numeros podem ser prejudicados se uma queimada acontecer, te causando uma perda no lucro de R$${perda_lucro}, sem contar o fator de precisar refazer todos os custos, que girariam em torno de um adicional de ${gasto_custo}.
          <br>
          Agora, utilizando o nosso sistema, você não teria que se preocupar com isso. De acordo com a Lei nº 11.196/2005 (lei do bem) os impostos podem ser diminuidos em até 60% com formas de prevenção biodegradáveis, estimando um valor de R${economia_imposto} na sua cobrança de impostos!!
        </h3>`

    }  else if(tipo_plantacao == "Café"|| tipo_plantacao == "café" ||  tipo_plantacao == "Cafe" ||  tipo_plantacao == "cafe" ){
        lucro_por_hectare = 19000;
        custo_por_hectare = 14000;
        total_lucro = lucro_por_hectare * hectare;
        total_custo = custo_por_hectare * hectare;
        economia_imposto = imposto * 0.6;
        gasto_custo = total_custo * 0.061;
        perda_lucro = total_lucro * 0.061;

        Resposta.innerHTML = `<h1>Olá ${nomeUsuario}, parece que escolheu a plantação de ${tipo_plantacao}!</h1>
        <h3>
          Você tem um total de R$${total_lucro}, parece ser muito!! Mas a sua plantação também tem um custo de R$${total_custo}.
          <br>
          Mas infelizmente, esses numeros podem ser prejudicados se uma queimada acontecer, te causando uma perda no lucro de R$${perda_lucro}, sem contar o fator de precisar refazer todos os custos, que girariam em torno de um adicional de ${gasto_custo}.
          <br>
          Agora, utilizando o nosso sistema, você não teria que se preocupar com isso. De acordo com a Lei nº 11.196/2005 (lei do bem) os impostos podem ser diminuidos em até 60% com formas de prevenção biodegradáveis, estimando um valor de R${economia_imposto} na sua cobrança de impostos!!
        </h3>`

    }  else if(tipo_plantacao == "soja"|| tipo_plantacao == "Soja"){
        lucro_por_hectare = 3000;
        custo_por_hectare = 5990;
        total_lucro = lucro_por_hectare * hectare;
        total_custo = custo_por_hectare * hectare;
        economia_imposto = imposto * 0.6;
        gasto_custo = total_custo * 0.061;
        perda_lucro = total_lucro * 0.061;

        Resposta.innerHTML = `<h1>Olá ${nomeUsuario}, parece que escolheu a plantação de ${tipo_plantacao}!</h1>
        <h3>
          Você tem um total de R$${total_lucro}, parece ser muito!! Mas a sua plantação também tem um custo de R$${total_custo}.
          <br>
          Mas infelizmente, esses numeros podem ser prejudicados se uma queimada acontecer, te causando uma perda no lucro de R$${perda_lucro}, sem contar o fator de precisar refazer todos os custos, que girariam em torno de um adicional de ${gasto_custo}.
          <br>
          Agora, utilizando o nosso sistema, você não teria que se preocupar com isso. De acordo com a Lei nº 11.196/2005 (lei do bem) os impostos podem ser diminuidos em até 60% com formas de prevenção biodegradáveis, estimando um valor de R${economia_imposto} na sua cobrança de impostos!!
        </h3>`

    }  else if(tipo_plantacao == "Algodão"|| tipo_plantacao == "algodão" ||  tipo_plantacao == "algodao" ||  tipo_plantacao == "Algodao" ){
        lucro_por_hectare = 6200;
        custo_por_hectare = 9900;
        total_lucro = lucro_por_hectare * hectare;
        total_custo = custo_por_hectare * hectare;
        economia_imposto = imposto * 0.6;
        gasto_custo = total_custo * 0.061;
        perda_lucro = total_lucro * 0.061;

        Resposta.innerHTML = `<h1>Olá ${nomeUsuario}, parece que escolheu a plantação de ${tipo_plantacao}!</h1>
        <h3>
          Você tem um total de R$${total_lucro}, parece ser muito!! Mas a sua plantação também tem um custo de R$${total_custo}.
          <br>
          Mas infelizmente, esses numeros podem ser prejudicados se uma queimada acontecer, te causando uma perda no lucro de R$${perda_lucro}, sem contar o fator de precisar refazer todos os custos, que girariam em torno de um adicional de ${gasto_custo}.
          <br>
          Agora, utilizando o nosso sistema, você não teria que se preocupar com isso. De acordo com a Lei nº 11.196/2005 (lei do bem) os impostos podem ser diminuidos em até 60% com formas de prevenção biodegradáveis, estimando um valor de R${economia_imposto} na sua cobrança de impostos!!
        </h3>`
    }
}

/** calculo de perda baseado na rede de pesquisa agro(total da perda por conta das queimadas/PiB Brasileiro) 
 14,7/2,4 = 6,125(6,1% aproximado)
*/
