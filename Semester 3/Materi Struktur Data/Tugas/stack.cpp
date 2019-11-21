#include <iostream>
#include <conio.h>
#include <windows.h>
#define max 10
using namespace std;

struct Tumpukan{
 int atas;
   int data[max];
   }T;

void awal(){
 T.atas=-1;
}

int isEmpty(){
 if(T.atas==-1)
    return 1;
   else
    return 0;
}

int isFull(){
 if(T.atas==max-1)
    return 1;
   else
    return 0;
}


void push(int data){
	if(isEmpty()==1){
 	   T.atas++;
       T.data[T.atas]=data;
       cout<<"Data "<<T.data[T.atas]<<" masuk ke stack";
	}
	else 
	if(isFull()==0){
   	   T.atas++;
       T.data[T.atas]=data;
       cout<<"Data "<<T.data[T.atas]<<" masuk ke stack";
	   }

    else
       cout<<"Tumpukan penuh";
    }

void clear(){
 T.atas=-1;

 cout<<"Tumpukan kosong!";
}

void pop(){
   if(isEmpty()==0){
      cout<<"Data teratas sudah terambil";
   T.atas--;
   }
   else
   cout<<"Data kosong";
   }

void tampil(){
 if(isEmpty()==0){
   for(int i=T.atas;i>=0;i--){
	cout<<"\nTumpukan ke "<<i<<"="<<T.data[i];
	}
 }
 else
   cout<<"Tumpukan kosong";
 }

int main(){
	int pil,data;
	awal();
	do
	{
	system("cls");
	cout<<"Program Stack Biasa"<<endl<<"==================="<<endl;
	cout<<"1. Create or Push\n2. Pop\n3. View\n4. Clear\n5. Exit\nMasukkan pilihan :";
	cin>>pil;
	switch(pil){
	case 1:cout<<"Masukkan data = ";cin>>data;
    	push(data);
    	break;
    case 2:pop();
        break;
    case 3:tampil();
        break;
    case 4:clear();
        break;
    case 5: cout<<"\nTerimakasih telah menggunakan Program yang sangat BIASA ini ^_^ \n\nTekan ENTER 2 kali untuk keluar";
    	break;
    default: cout<<"Pilihan yang anda masukan salah!"<<endl;
    }
    getch();
	}
while(pil!=5);
}
