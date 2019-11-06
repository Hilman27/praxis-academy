import 'dart:io';
import 'dart:math';
import 'dart:async';

import 'package:test/test.dart' as prefix0;

Future sleep5() {
  return Future.delayed(const Duration(seconds: 5), () => "5");
}
abstract class Nasabah{
  String nama;
  int pin;
  int saldo;

  Nasabah(String nama, int pin);

  String getnama(){
    return this.nama;
  }
  void setNama(String newnama){
    this.nama=newnama;
  }
  int getpin(){
    return this.pin;
  }
  void setPin(int newpin){
    this.pin=newpin;
  }
  int getSaldo(){
    return this.saldo;
  }
  void setSaldo(int newSaldo){
    this.saldo=newSaldo;
  }  
  void randomSaldo(){
    Random rngSama= Random();
    this.saldo = rngSama.nextInt(10000000);
  }
}

mixin usdDollar{
  int saldoDolar;
  int getSaldoDolar(){
    return this.saldoDolar;
  }
  void setSaldoDolar(int newSaldo){
    this.saldoDolar=newSaldo;
  }
  void randomSaldoDolar(){
    Random rngSama=Random();
    this.saldoDolar = rngSama.nextInt(10000000);
  }
}

class NasabahPremium extends Nasabah with usdDollar{
  NasabahPremium(String nama, int pin): super(nama, pin){
    randomSaldo();
    randomSaldoDolar();
  }
  Greeting (){
    String nama2 = this.nama;
    print("Hi, Mr. $nama2 Saldo anda Rp. $saldo dan \$ $saldoDolar");
  }
  SaldoShow(){
    print("Saldo anda Rp. $saldo dan \$ $saldoDolar");
  }
  bool periksaPIN(){
    print("Silahkan Masukan PIN untuk Konfirmasi");
    String pinBaru = stdin.readLineSync();  
    if (pin==int.parse(pinBaru)){
        return true;
    }else {return false;}
  }
}

class ATM {
  NasabahPremium nasabah;
  void ATMBegin(){
    print("Selamat datang di bank. Silahkan masukan Nama anda :");
    String input = stdin.readLineSync();
    if(input.isEmpty){
      print("Silahkan masukan lagi.");
      ATMBegin();
    }        
    print("Terimakasih. Silahkan masukan PIN anda :");
    if(input.isEmpty){
      print("Silahkan masukan lagi.");
      ATMBegin();
    }
    String pinTemp = stdin.readLineSync();    
    nasabah = NasabahPremium(input,int.parse(pinTemp));
    nasabah.setNama(input);
    nasabah.setPin(int.parse(pinTemp));    
    MainMenu();
  }
  void MainMenu(){
    nasabah.Greeting();
    print("Silahkan pilih tipe pembayaran : ");
    print("1. Transfer Saldo (Rupiah)");
    print("2. Transfer Saldo (Dollar)");
    print("3. Tukar Mata Uang");
    String pinTemp = stdin.readLineSync();    
    if (pinTemp==1.toString()){
        Menu1();
    }else if (pinTemp==2.toString()){
      Menu2();
    }else if (pinTemp==3.toString()){
      Menu3();
    }else {
      print("Input tidak sesuai");
      sleep5();
    }
  }

  void Menu1(){
    nasabah.Greeting();
    print("Silahkan masukan jumlah yang hendak dibayar ");    
    String pinTemp = stdin.readLineSync();  
    int price = int.parse(pinTemp);
    if(nasabah.saldo<price){
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");  
      print("");
        print("");  
        sleep5();
        MainMenu();
      Menu1();
    }
    print("Anda yakin ingin membayar sebayak $price?");    
    print("1. Setuju | 2. Tidak Setuju");    
    pinTemp = stdin.readLineSync();   
    if(int.parse(pinTemp)==1){
        if(nasabah.periksaPIN()){
        nasabah.setSaldo(nasabah.saldo - price);
        int saldo= nasabah.saldo;
        print("Anda telah membayar sebanyak $price. Saldo anda adalah $saldo");    
        sleep5();
        print("");
        print("");        
        }else {
        print("Pin anda Salah");    
        sleep5();
        }
        MainMenu();
        
    }else{
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
    }
  }

  void Menu2(){
    nasabah.Greeting();
    print("Silahkan masukan jumlah yang hendak dibayar(USD) ");    
    String pinTemp = stdin.readLineSync();  
    int price = int.parse(pinTemp);
    if(nasabah.saldo<price){
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
      Menu1();
    }
    print("Anda yakin ingin membayar sebayak \$ $price?");    
    print("1. Setuju | 2. Tidak Setuju");    
    pinTemp = stdin.readLineSync();   
    if(int.parse(pinTemp)==1){
      if(nasabah.saldoDolar<price){
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");  
      print("");
        print("");  
        sleep5();
        MainMenu();      
       }
       if(!nasabah.periksaPIN()){
        print("Pin anda Salah");    
        sleep5();
        MainMenu();        
        }
        
        nasabah.setSaldoDolar(nasabah.saldoDolar - price);
        int saldo= nasabah.saldoDolar;
        print("Anda telah membayar sebanyak \$ $price. Saldo anda adalah \$ $saldo");    
        sleep5();
        print("");
        print("");
        MainMenu();
    }else{
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
    }
  }

  void Menu3(){
    nasabah.Greeting();
    print("Silahkan masukan jenis pertukaran");    
    print("1. Rp ke USD | 2. USD ke Rupiah"); 
    int answer = int.parse(stdin.readLineSync());
    print("Silahkan masukan jumlah yang hendak ditukar : ");    
    String pinTemp = stdin.readLineSync();  
    int price = int.parse(pinTemp);
    if(answer==1){

      if(nasabah.saldo<price){
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
      Menu1();
    }
    }else if(answer==2){

      if(nasabah.saldoDolar<price){
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
      Menu1();
      }
    }else {
      print("Saldo Anda Tidak Mencukupi");
      print("Anda akan segera ke menu utama");  
      print("");
        print("");  
        sleep5();
        MainMenu();   
    }
    if (answer==1){print("Anda yakin ingin membayar sebayak Rp $price?");    }
    else {print("Anda yakin ingin membayar sebayak \$ $price?");    }
    
    print("1. Setuju | 2. Tidak Setuju");    
    pinTemp = stdin.readLineSync();   
    if(int.parse(pinTemp)==1){
      if (answer==1){
        if(nasabah.saldo<price){
        print("Saldo Anda Tidak Mencukupi");
        print("Anda akan segera ke menu utama");  
        print("");
          print("");  
          sleep5();
          MainMenu();      
        }

        if(!nasabah.periksaPIN()){
        print("Pin anda Salah");    
        sleep5();
        MainMenu();        
        }
          nasabah.setSaldo(nasabah.saldo - price);
          nasabah.setSaldoDolar(nasabah.saldoDolar + price);
          int saldo= nasabah.saldo;
          int saldo2= nasabah.saldoDolar;
          print("Anda telah membayar sebanyak Rp $price. Saldo anda adalah Rp $saldo dan \$ $saldo2");    
          sleep5();
          print("");
          print("");
          MainMenu();
      }else if (answer==2){
        if(nasabah.saldoDolar<price){
        print("Saldo Anda Tidak Mencukupi");
        print("Anda akan segera ke menu utama");  
        print("");
          print("");  
          sleep5();
          MainMenu();      
        }

        if(!nasabah.periksaPIN()){
        print("Pin anda Salah");    
        sleep5();
        MainMenu();        
        }
          nasabah.setSaldoDolar(nasabah.saldoDolar - price);
          nasabah.setSaldo(nasabah.saldo + price);
          int saldo= nasabah.saldo;
          int saldo2= nasabah.saldoDolar;
          print("Anda telah membayar sebanyak \$ $price. Saldo anda adalah Rp $saldo dan \$ $saldo2");    
          sleep5();
          print("");
          print("");
          MainMenu();
      }
    }else{
      print("Anda akan segera ke menu utama");    
        sleep5();
        MainMenu();
    
    }
  }
}



void main(){
  ATM tellerMachine = ATM();
  tellerMachine.ATMBegin();

  
}