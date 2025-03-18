// incluindo biblioteca do dht11 e definindo o tipo de sensor
#include "DHT.h"
#define TIPO_SENSOR DHT11

// criando uma variável constante e inteira com valor A0 (na qual será usado para a porta analógica)
const int PINO_SENSOR_DHT11 = A0;

// definindo os parâmetros a partir da biblioteca DHT
DHT sensorDHT(PINO_SENSOR_DHT11, TIPO_SENSOR);

// definindo o setup com 9600(taxa de transferência de bits) e iniciando 
void setup() {
  Serial.begin(9600);
  //iniciando a leitura de sensor
  sensorDHT.begin();

}

void loop() {
  // definindo as variáveis para leitura de umidade por meio da biblioteca DHT.h
  float umidade = sensorDHT.readHumidity();
  float minimo = 30;

  // se tanto não ocorrer a leitura da umidade, printa um erro
    if(isnan(umidade)) {
      Serial.println("Erro ao ler os dados do sensor");

  // // caso contrário, exiba as Strings seguidas das variáveis que contém os dados
  } else {
    //os dados são printados no serial plotter, além de ter seus labels com os respectivos nomes.
    Serial.print("Umidade:"); Serial.print(umidade); Serial.print(" "); Serial.print("Minimo:"); Serial.print(minimo); Serial.println();
  }


  //espera de 1 segundo para o loop ser executado novamente
  delay(1000);
}
