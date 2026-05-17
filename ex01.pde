
float x=4, y=1, x1=0, y1=0;//dropblock用
int speed=1;//これ自体がレベルと同義
float flow=0, txtlong=0;
int Q[] ={1, 1, 1, 1, 1, 1, 1};
//初期化用
int firstbox[][] = {{1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}};
int box[][] = {{1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0}, {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}};
//デバッグ中のエラー防止のために配列は大きくしてある。
int prebox[][] = new int[25][15];//仮置き配列//おそらく不要
int dispbox[][] = new int[25][15];//boxにdropblockを足したもの
int block[][][] = {{{0, 0, 0, 0}, {0, 3, 3, 0}, {0, 3, 3, 0}, {0, 0, 0, 0}}, {{0, 5, 0, 0}, {5, 5, 5, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, {{7, 0, 0, 0}, {7, 7, 7, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, {{0, 0, 9, 0}, {9, 9, 9, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, {{0, 11, 11, 0}, {11, 11, 0, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, {{13, 13, 0, 0}, {0, 13, 13, 0}, {0, 0, 0, 0}, {0, 0, 0, 0}}, {{0, 15, 0, 0}, {0, 15, 0, 0}, {0, 15, 0, 0}, {0, 15, 0, 0}}};//0の時は回転不可
int iro[][] = {{#392F00, #ffeb3b, #5E5A00, #C7B800}, {#9C27B0, #FFAFFF, #BE4BD1, #E16CF3}, {#002A65, #03a9f4, #004787, #0066AA}, {#690000, #ff5722, #8C0000, #B10000}, {#062E00, #8BC34A, #125100, #3B7500}, {#690000, #F44336, #890000, #AC0002}, {#003042, #33C9DC, #005465, #00798B}};//3-Oミノ黄色,5-Tミノ紫色,7-jミノ青色,9-Lミノ-オレンジ,11-Sミノ緑,13-Zミノ赤色,15-Iミノ水色
//https://colorhunt.co/palette/f0ebe3e4dccf7d9d9c576f72
float starpos[][] = new float[2][256];
int dropblock[][][]=new int[5][4][4];//0-hold,1-drop,2,3,4,,,,befordrop
int menu=0;
PFont english, japanese, japanesebig, englishbig;
//keycode
int keyUP=0, keyLeft = 0, keyRight = 0, keyDown = 0, Ctrl=0, Sft=0,Space=0,M=0;
//フレーム測る用
int Leftcount = 0, Rightcount = 0, Downcount = 0, Ctrlcount=0, Sftcount=0,Mcount=0;
//ボタンの判定
int Spacecheck=1,UPcheck=1, Leftcheck = 1, Rightcheck = 1, Downcheck = 1, Ctrlcheck=1, Sftcheck=1, crackcheck=1,Mcheck=1;
int boxsize;//箱の大きさ
int score=0;
int life=1;
int waninokazu=0;//初期ワニのかず
int linetotal1=0,linetotal2=0;
int gameCtrl=1, gameover=0, crack=0, debug=0,wani=0;//menu1の制御
PImage wanigazou[] = new PImage[11];//igaku,gaikoku,kisokou,keizai,kougaku,sigaku,ninngennkagaku,bunngaku,hougaku,yakugaku,rigaku,wani;
int waninum=9;//ワニの番号
PImage normalwani;
float rate=1;//スコアの倍率

void setup() {
  size(1000, 800);
  frameRate(60);
  imageMode(CENTER);
  normalwani=loadImage("drwani_basic_r.png");
  wanigazou[0]=loadImage("医学部の頃.png");
  wanigazou[1]=loadImage("外国語学部の頃.png");
  wanigazou[2]=loadImage("基礎工学部の頃.png");
  wanigazou[3]=loadImage("経済学部の頃.png");
  wanigazou[4]=loadImage("工学部の頃.png");
  wanigazou[5]=loadImage("歯学部の頃.png");
  wanigazou[6]=loadImage("人間科学部の頃.png");
  wanigazou[7]=loadImage("文学部の頃.png");
  wanigazou[8]=loadImage("法学部の頃.png");
  wanigazou[9]=loadImage("薬学部の頃.png");
  wanigazou[10]=loadImage("理学部の頃.png");
  for (int i=0; i<256; i++) {
    starpos[0][i]=random(height);
    starpos[1][i]=random(width);
  }
  english = createFont("font.otf", 45);
  englishbig = createFont("国鉄っぽいフォント.ttf", 125);
  japanesebig= createFont("MISHIMISHI-BLOCK.otf", 125);
  japanese = createFont("font1.ttf", 36);
  textFont(japanese);
  textAlign(CENTER);
  //dropblock[0],holdの初期化
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dropblock[0][i][j] = 0;
    }
  }
  //dropblock[0以外]の初期化
  for (int p=1; p<5; p++) {
    insertdropblock(p);
  }
}

void draw() {
  //三角関数用の計算
  if (flow<2*PI) {
    flow+=0.1;
  } else {
    flow=0;
  }
  if (menu==0) {//ページ制御
    topMenu();
  } else if (menu==1) {
    haikei();
    if (gameCtrl==1)gamectrl();
    if (crack==1)crack();
    dispbox();
    dispnextblock();
    if (gameover==1)gameover();
    if(wani == 1)wani();
  } else if (menu==2) {
    haikei();
    pregamepage();
  }
  //if(debug==1)debug();
  //debug();
}

void pregamepage() {//ゲーム前の画面

  if (M == 1) {
      if (Mcheck == 1) {
        menu=0;
        Mcheck=0;
      }
    }
    fill(255);
    textFont(japanese);
    textAlign(CENTER);
    text("そうさ-やじるしキー",width/2,height/2-200);
    text("ホールド-ウエやじるし",width/2,height/2-100);
    text("ひだりかいてん-コントロール",width/2,height/2);
    text("みぎかいてん-シフト",width/2,height/2+100);
    text("ワニ-スペース",width/2,height/2+200);
    textAlign(CENTER);
}

void haikei() {
  int alert=0;
  background(0);
  translate(0, 0);
  for (int i=1; i<256; i++) {
    stroke(255, random(190, 244));
    strokeWeight(i%6);
    point(starpos[1][i], starpos[0][i]);
  }
  for (int i=1; i<10; i++) {
    for (int j=1; j<11; j++) {
      if (box[i][j]!=0)alert++;
    }
  }
  fill(#FF0000, alert*10);
  noStroke();
  rect(0, 0, width, height);
  fill(0, alert*10);
  textFont(english);
  for (int i=0; i<11; i++) {
    for (int j=0; j<12; j++) {
      text("warning", i*160, j*80);
    }
  }
}

void topMenu() {
  txtlong+=0.1;

  haikei();
  fill(255);
  textFont(japanesebig);
  text("ワニテトリス", width/2, height/2+10*sin(flow));
  char str1[]= {'ス', 'ペ', 'ー','ス','を', 'お', 'し', 'て', 'ゲ', 'ー', 'ム', 'を', 'ス', 'タ', 'ー', 'ト', '!','\n','エ','ム','を','お','し','て','そ','う','さ','ほ','う','ほ','う','を','み','る'};
  textbox1(str1, 34, 0, 0);
  if ( Space == 1) {
    if (Spacecheck == 1) {
      menu=1;
      Spacecheck=0;
    }
  }
  if (M == 1) {
    if (Mcheck == 1) {
      menu=2;
      Mcheck=0;
    }
  }
}
void textbox1(char str[], int wordnum, float x2, float y2) {
  translate(100, 600);
  fill(255, 100);
  strokeWeight(4);
  stroke(255);
  rect(0, 0, 800+x2, 100+y2);
  textSize(24);
  textAlign(LEFT);
  fill(255);
  textFont(japanese);
  text(str,0,(int)txtlong <= wordnum ? (int)txtlong : wordnum ,10+x2,40+y2);
  translate(-100, -600);
  textAlign(CENTER);
}
int textlongcheck=0;
float textlong=0;

void textbox2(char str[], int wordnum, float x3, float y3) {
  translate(100, 600);
  fill(0, 100);
  strokeWeight(4);
  stroke(0);
  rect(x3, y3, 800, 150);
  textSize(24);
  textAlign(LEFT);
  fill(255);
  textFont(japanese);
  if(textlongcheck == 1){//初回
    textlongcheck++;
    textlong=0;
  }else if(textlongcheck == 2){
    textlong+=0.5;
  }
  if(textlong>=wordnum){
    textlongcheck=0;
  }
  text(str,0,(int)textlong <=wordnum ? (int)textlong : wordnum,10+x3,40+y3);
  textAlign(CENTER);
}
void gamectrl() {
  //初期化
  x1=x;
  y1=y;
  boxtobox(2);
  boxtobox(3);
  //初手で積んでたらゲームオーバー
  if (precheck()!=0&&y==1) {
    if(life==1){
      gameCtrl=0;
      gameover=1;
      Downcheck=0;
      textlongcheck = 1;
    }else{
      life--;
      //boxの初期化
      for (int i=0; i<25; i++) {
        for (int j=0; j<15; j++) {
          box[i][j]=firstbox[i][j];
        }
      }
    }
  }
  //wani
  if (Space == 1) {
    if (Spacecheck==1&&waninokazu>0) {
      waninokazu--;
      wani=1;
      waninum=round(random(10));
      gameCtrl=0;
      Spacecheck=0;
      textlongcheck=1;
    }
  }
  //Hold
  if (keyUP == 1) {
    if (UPcheck==1) {
      int tmpblock4[][] = new int[4][4];
      for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
          tmpblock4[i][j]=dropblock[0][i][j];
          dropblock[0][i][j]=dropblock[1][i][j];
          dropblock[1][i][j]=tmpblock4[i][j];
        }
      }
      boxtobox(2);
      boxtobox(3);
      if (precheck()!=0) {//もしだめなら元に戻す
        for (int i=0; i<4; i++) {
          for (int j=0; j<4; j++) {
            tmpblock4[i][j]=dropblock[0][i][j];
            dropblock[0][i][j]=dropblock[1][i][j];
            dropblock[1][i][j]=tmpblock4[i][j];
          }
        }
      }
      int c=0;
      for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
          c+=dropblock[1][i][j];
        }
      }
      if (c==0) {
        //dropblockを1ずらす
        for (int p=2; p<5; p++) {
          for (int i=0; i<4; i++) {
            for (int j=0; j<4; j++) {
              dropblock[p-1][i][j] = dropblock[p][i][j];
            }
          }
        }
        insertdropblock(4);//dropに新しいのを追加する
      }
      UPcheck=0;
    }
  }
  //移動
  if ( keyDown == 1 && y<21) {
    y += 0.7;
  }//1にすると貫通バグ起きる
  if ( keyLeft == 1 && x>0) {
    if (Leftcheck == 1) {
      x -= 1;
      Leftcheck=0;
      Leftcount=0;
    } else {//長押し用
      Leftcount+=1;
      if (Leftcount == 5) {
        Leftcount=0;
        Leftcheck=1;
      }
    }
  }
  if (keyRight == 1 && x<11) {
    if (Rightcheck == 1) {
      x += 1;
      Rightcheck=0;
      Rightcount=0;
    } else {//長押し用
      Rightcount+=1;
      if (Rightcount == 5) {
        Rightcount=0;
        Rightcheck=1;
      }
    }
  }
  boxtobox(2);
  boxtobox(3);//dropbrockをdispboxへ
  if (precheck()!=0) {//駄目なら元の値に戻す
    x=x1;
    y=y1;
    boxtobox(2);
    boxtobox(3);//dispboxをきれいにして値を正したxyでdispboxに格納する。
  }
  //半時計回転
  if ( Ctrl == 1 ) {
    if (Ctrlcheck==1) {
      kaiten(1);
      boxtobox(2);
      boxtobox(3);//dispboxをきれいにしてdropblockをdispboxに格納する。
      if (precheck()!=0) {
        for (int i=0; i<3; i++)kaiten(1);
        boxtobox(2);
        boxtobox(3);//dispboxをきれいにしてdispboxに格納する。
      }
      Ctrlcount=0;//長押し判定の初期化
      Ctrlcheck=0;//一回やりましたよの判定
    } else {
      Ctrlcount+=1;
      if (Ctrlcount==20) {
        Ctrlcount=0;
        Ctrlcheck=1;
      }
    }
  }
  //時計回転
  if ( Sft == 1 ) {
    if (Sftcheck==1) {
      for (int i=0; i<3; i++)kaiten(1);
      boxtobox(2);
      boxtobox(3);//dispboxをきれいにしてdropblockをdispboxに格納する。
      if (precheck()!=0) {
        kaiten(1);
        boxtobox(2);
        boxtobox(3);//dispboxをきれいにしてdispboxに格納する。
      }
      Sftcount=0;//長押し判定の初期化
      Sftcheck=0;//一回やりましたよの判定
    } else {//ボタン長押しの時の処理
      Sftcount+=1;
      if (Sftcount==20) {
        Sftcount=0;
        Sftcheck=1;
      }
    }
  }
  //落下
  y=y + 0.02+0.01*speed;
  if (precheck()!=0) {//落下しきった時
    y--;
    boxtobox(2);
    boxtobox(3);//dispboxをきれいにして値を正したyでdispboxに格納する。
    boxtobox(4);//固定化
    //以下クラックと判定
    int c=0;
    for (int i=1; i<21; i++) {
      if (onlyhantei(i)==1)c++;
    }
    if (c!=0) {//一つでも消える列があるとき
      gameCtrl=0;
      crack=1;
      crackcheck=0;//つぎにゲームコントロールが呼び出されたときにクラック処理を行わない
    } else {//一つでも消える列がないとき
      //クラックは行わない
      otitaatonoshori();
    }
  }
}

void otitaatonoshori() {//落ちた後の処理
  for (int p=2; p<5; p++) {
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        dropblock[p-1][i][j] = dropblock[p][i][j];
      }
    }
  }
  insertdropblock(4);//dropに新しいのを追加する
  y=1;
  x=4;
}

int onlyhantei(int n) {//n行目が消えるのか判定のみ行う
  int hantei=0;
  int c=0;
  for (int j=1; j<11; j++) {
    if (box[n][j]!=0)hantei++;
  }
  if (hantei==10)c=1;
  return c;//消えるときは1,消えない時は0
}

void hantei() {//判定とスコアの計算//1frame
  int hantei1;
  int linenum=0;//一気に何列消したか調べるよう
  for (int i=1; i<21; i++) {
    hantei1=0;
    for (int j=1; j<11; j++) {
      if (box[i][j]!=0)hantei1++;
    }
    if (hantei1==10) {
      linenum++;
      linetotal1++;
      linetotal2++;
      for (int k=i; k>1; k--) {
        for (int j=1; j<11; j++) {
          box[k][j]=box[k-1][j];
        }
      }
    }
  }
  //以下でスコアの計算
  score += linenum*linenum*speed*100*rate;
  //speedの変更
  if (linetotal1 >= 5) {
    speed++;
    linetotal1=0;
  }
  //ワニの追加
  if (linetotal2 >= 3) {
    if(waninokazu<=2)waninokazu+=1;
    linetotal2=0;
  }
}

int crackframe=0;
int tmpline10[][]=new int[21][11];//crack用20でもいいが都合合わせのために21と11

void crack() {//消えるときのちかちか
  crackframe++;//最初に一足しておく
  boxtobox(2);
  for (int i = 1; i<21; i++) {
    if (onlyhantei(i)==1) {
      if (crackframe%3==0) {//クラックフレームが三の倍数の時に起動する。
        if (crackframe%2!=0) {//3の倍数かつ奇数のとき
          for (int j=1; j<11; j++) {//tmpに移し替えて0にする
            tmpline10[i][j]=dispbox[i][j];
            dispbox[i][j] = 0;
          }
        } else {//3の倍数かつ偶数の時
          for (int j=1; j<11; j++) {//tmpから移し替えて0から戻す
            dispbox[i][j] = tmpline10[i][j];
          }
        }
      }
    }
  }
  if (crackframe==60) {//最後のとき
    crackframe=0;
    gameCtrl=1;
    crack=0;
    otitaatonoshori();
    hantei();
  }
}

void gameover() {
  fill(0, 200);
  noStroke();
  rect(-50, -220, width, height);
  textFont(englishbig);
  fill(255);
  text("Score\n"+score, -50+width/2, -300+height/2);
  char Str1[] = {'ス','ペ','ー','ス','を','お','し','て','ホ','ー','ム','が','め','ん','に','も','ど','る'};
  textbox2(Str1,18,-50, -220);
  if ( Space == 1) {
    if (Spacecheck == 1) {
      quit();
      Spacecheck=0;
    }
  }
}

void dispbox() {
  boxsize = 30;
  translate(250, 50);//テトリスの座標
  strokeWeight(10);
  fill(#E4DCCF);
  stroke(#7D9D9C);
  rect(-150, -30, boxsize*27, boxsize*24); //枠2
  stroke(#576F72);
  strokeWeight(5);
  fill(#F0EBE3);
  rect(boxsize, boxsize, boxsize*10, boxsize*20); //枠1
  for (int i=2; i<21; i++) {//補助ライン1
    stroke(#576F72);
    strokeWeight(1);
    line(boxsize, i*boxsize, boxsize*11, i*boxsize);
  }
  for (int i=2; i<11; i++) {//補助ライン2
    line(i*boxsize, boxsize, i*boxsize, boxsize*21);
  }
  for (int i=0; i<22; i++) {
    for (int j=0; j<12; j++) {
      if (dispbox[i][j]%2 != 0 && dispbox[i][j] >1 && dispbox[i][j] < 16) {//ボックスは2以上の値なので判別するのにそれを使っている。
        strokeWeight(2);
        stroke(iro[(dispbox[i][j]-1)/2-1][0]);
        fill(iro[(dispbox[i][j]-1)/2-1][1]); //iro[box[i][j]/2-1][1]//0から順に内側へ。
        rect(boxsize*j, boxsize*i, boxsize, boxsize);
        stroke(iro[(dispbox[i][j]-1)/2-1][2]);
        fill(iro[(dispbox[i][j]-1)/2-1][3]);
        rect(boxsize*j+boxsize/4, boxsize*i+boxsize/4, boxsize/2, boxsize/2);
      }
    }
  }
  translate(-200, -100);
}

void dispnextblock() {

  //Nextのほう
  boxsize=20;
  translate(600, 70);
  stroke(#576F72);
  strokeWeight(5);
  fill(#7D9D9C);
  rect(-boxsize, 90, boxsize*6, boxsize*15); //枠1
  strokeWeight(1);
  textSize(30);
  fill(#576F72);
  text("NEXT", 40, 85);
  for (int p=2; p<5; p++) {
    translate(0, boxsize*5);
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        if (dropblock[p][i][j]%2 != 0 && dropblock[p][i][j] >1) {//ボックスは2以上の値なので判別するのにそれを使っている。
          strokeWeight(2);
          stroke(iro[(dropblock[p][i][j]-1)/2-1][0]);
          fill(iro[(dropblock[p][i][j]-1)/2-1][1]); //iro[dropblock[p][i][j]-1)/2-1][1]//0から順に内側へ。
          rect(boxsize*j, boxsize*i, boxsize, boxsize);
          stroke(iro[(dropblock[p][i][j]-1)/2-1][2]);
          fill(iro[(dropblock[p][i][j]-1)/2-1][3]);
          rect(boxsize*j+boxsize/4, boxsize*i+boxsize/4, boxsize/2, boxsize/2);
        }
      }
    }
  }
  textAlign(LEFT);
  textFont(english);
  fill(#576F72);
  text("Score  "+score, -10, 150);
  text("Level  " +speed, -10, 200);
  text("Life  "+life, -10, 250);
  text("Wani  ", -10, 300);
  for(int i=0;i<waninokazu;i++){
    image(normalwani,50+60*i,340,50,50);
  }
  textAlign(CENTER);
  //holdのほう
  translate(-600, -100);
  stroke(#576F72);
  strokeWeight(5);
  fill(#7D9D9C);
  rect(80, -110, boxsize*6, boxsize*6); //枠1
  strokeWeight(1);
  textSize(30);
  fill(#576F72);
  text("HOLD", 140, -120);
  translate(80+boxsize, -110+boxsize);
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      if (dropblock[0][i][j]%2 != 0 && dropblock[0][i][j] >1) {//ボックスは2以上の値なので判別するのにそれを使っている。
        strokeWeight(2);
        stroke(iro[(dropblock[0][i][j]-1)/2-1][0]);
        fill(iro[(dropblock[0][i][j]-1)/2-1][1]); //iro[dropblock[p][i][j]-1)/2-1][1]//0から順に内側へ。
        rect(boxsize*j, boxsize*i, boxsize, boxsize);
        stroke(iro[(dropblock[0][i][j]-1)/2-1][2]);
        fill(iro[(dropblock[0][i][j]-1)/2-1][3]);
        rect(boxsize*j+boxsize/4, boxsize*i+boxsize/4, boxsize/2, boxsize/2);
      }
    }
  }
  translate(-80-boxsize, 110-boxsize);
}

void kaiten(int n) {//preblockの何番地を回転させるのか//ちなみに半時計回転
  int tmpblock4[][] = new int[4][4];
  int tmpblock3[][] = new int[3][3];
  int c=0;
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      c+=dropblock[n][i][j];
    }
  }
  if (c/4 == 15) {//4ブロックの時
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        tmpblock4[j][i]=dropblock[n][i][j];
      }
    }
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        dropblock[n][i][j]=tmpblock4[i][j];
        ;
      }
    }
  } else if (c/4 >= 5) {//3枠の時。
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        tmpblock3[j][i]=dropblock[n][i][2-j];
      }
    }
    for (int i=0; i<3; i++) {
      for (int j=0; j<3; j++) {
        dropblock[n][i][j]=tmpblock3[i][j];
        ;
      }
    }
  }
}

int precheck() {//可能か確認す機能
  int check1 = 0;
  for (int i=0; i<22; i++) {
    for (int j=0; j<12; j++) {
      if (dispbox[i][j] !=0 && dispbox[i][j] %2 == 0)check1++;
    }
  }
  return check1;
}

void boxtobox(int n) {//いろいろそろってる便利な関数
  if (n==0) {//prebox配列にdispboxを格納
    for (int i=0; i<22; i++) {
      for (int j=0; j<12; j++) {
        prebox[i][j] = dispbox[i][j];
      }
    }
  } else if (n==1) {//dropbrockをboxへ
    for (int i=0; i<22; i++) {
      for (int j=0; j<12; j++) {
        box[(int)y+i][(int)x+j] += dropblock[1][i][j];
      }
    }
  } else if (n==2) {//dispbox wo box ni
    for (int i=0; i<22; i++) {
      for (int j=0; j<12; j++) {
        dispbox[i][j] = box[i][j];
      }
    }
  } else if (n==3) {//dropbrockをdispboxへ
    for (int i=0; i<4; i++) {
      for (int j=0; j<4; j++) {
        if (dropblock[1][i][j]!=0)dispbox[(int)y+i][(int)x+j] += dropblock[1][i][j];
      }
    }
  } else if (n==4) {//dispboxをboxに固定化する
    for (int i=0; i<22; i++) {
      for (int j=0; j<12; j++) {
        box[i][j] = dispbox[i][j];
      }
    }
  }
}

void quit() {
  menu=0;
  speed=1;
  score=0;
  life=1;
  waninokazu=0;
  linetotal1=0;
  linetotal2=0;
  gameover=0;
  gameCtrl=1;
  waninokazu=0;
  rate=1;
  y=1;
  x=4;
  //dropblock[0]の初期化
  for (int i=0; i<4; i++) {
    for (int j=0; j<4; j++) {
      dropblock[0][i][j] = 0;
    }
  }
  for(int i=0;i<7;i++)Q[i] =1;
  //dropblock[0以外]の初期化
  for (int p=1; p<5; p++) {
    insertdropblock(p);
  }
  //boxの初期化
  for (int i=0; i<25; i++) {
    for (int j=0; j<15; j++) {
      box[i][j]=firstbox[i][j];
    }
  }
}
void insertdropblock(int n) {//Q配列を参考にdropblockのn番目にブロックを入れる
  for (;; ) {
    int r = round(random(6));
    if (Q[r]==1) {
      for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
          dropblock[n][i][j] = block[r][i][j];
        }
      }
      kaiten(n);//ついでにn番地を回転
      Q[r]=0;
      //Q配列がもし全部0なら全部1にする。
      int c1=7;
      for (int i=0; i<7; i++) {
        if (Q[i]==0)c1--;
      }
      if (c1==0) {
        for (int i=0; i<7; i++)Q[i]=1;
      }
      break;
    }
  }
}
int wanidankai=0;
void wani(){//全体的なワニの制御
  if(wanidankai ==0){
    waniappear();
  }else if(wanidankai==1){
    wanipower();
  }
  if(wanifinish==1){
    wanidankai=0;
    gameCtrl=1;
    wani=0;
    wanifinish=0;
  }
}

void waniappear(){
    int x3=-50;
    int y3=-220;
    fill(255,125);
    noStroke();
    rect(x3,y3,width,height);
    image(wanigazou[waninum],width/2+x3,height/2+y3+10*sin(flow)-100,500,500);
  switch(waninum){
    case 0 ://医学
      char Str2[]={'い','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','ラ','イ','フ','が','1','ふ','え','た','！'};
      textbox2(Str2,28,x3,y3);
      break;
    case 1 :
      char Str3[]={'が','い','こ','く','ご','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','ワ','ニ','は','か','せ','を','よ','べ','る','か','い','す','う','が','ふ','え','た','！'};
      textbox2(Str3,41,x3,y3);
      break;
    case 2 :
      char Str4[]={'き','そ','こ','う','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','し','か','し','な','に','も','お','こ','ら','な','か','っ','た','！'};
      textbox2(Str4,36,x3,y3);
      break;
    case 3 :
      char Str5[]={'け','い','ざ','い','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','こ','ん','ご','の','か','く','と','く','ス','コ','ア','が','ふ','え','る','！'};
      textbox2(Str5,38,x3,y3);
      break;
    case 4 :
      char Str6[]={'こ','う','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','レ','ベ','ル','が','さ','が','る','！'};
      textbox2(Str6,28,x3,y3);
      break;
    case 5 :
      char Str7[]={'し','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','し','た','の','ほ','う','の','す','き','ま','が','な','く','な','る','！'};
      textbox2(Str7,34,x3,y3);
      break;
    case 6 :
      char Str8[]={'に','ん','げ','ん','か','が','く','ぶ','の','ワ','ニ','が','た','す','け','に','き','た','！','\n','ス','コ','ア','が','ふ','え','た','！'};
      textbox2(Str8,28,x3,y3);
      break;
    case 7 :
      char Str9[]={'ぶ','ん','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','つ','ぎ','の','ブ','ロ','ッ','ク','が','ぜ','ん','ぶ','へ','ん','か','す','る','！'};
      textbox2(Str9,37,x3,y3);
      break;
    case 8 :
      char Str10[]={'ほ','う','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','す','べ','て','の','ブ','ロ','ッ','ク','が','ひ','だ','り','に','よ','る','！'};
      textbox2(Str10,36,x3,y3);
      break;
    case 9 :
      char Str11[]={'や','く','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','し','た','の','ぶ','ろ','っ','く','が','け','し','さ','っ','た','!'};
      textbox2(Str11,34,x3,y3);
      break;
    case 10 :
      char Str12[]={'り','が','く','ぶ','の','ワ','ニ','は','か','せ','が','た','す','け','に','き','た','！','\n','ブ','ロ','ッ','ク','が','じ','ゅ','う','り','ょ','く','で','お','ち','た','！'};
      textbox2(Str12,35,x3,y3);
      break;
  }
  if(Space==1){
    if(Spacecheck==1){
      wanidankai=1;//次の段階へ
      Spacecheck=0;
    }
  }
}
int wanifinish=0;//ワニパワー関数の操作が終わったことを知らせる変数
void wanipower(){//ワニの能力
  switch(waninum){
    case 0 ://医学
      life+=1;
      wanifinish=1;
      break;
    case 1 :
      waninokazu++;
      if(waninokazu<3)waninokazu++;
      wanifinish=1;
      break;
    case 2 :
      wanifinish=1;
      break;
    case 3 :
      rate*=1.2;
      wanifinish=1;
      break;
    case 4 :
      if(speed>2)speed-=2;
      wanifinish=1;
      break;
    case 5 :
      int umerukazu=(int)random(5,10);
      for(int i=20;i>10;i--){
        for(int j=1;j<11;j++){
          if(box[i][j]==0 && umerukazu>0){
            box[i][j]=round(random(1,7))*2+1;
            umerukazu--;
          }
        }
      }
      wanifinish=1;
      break;
    case 6 :
      score+=rate*speed*1000;
      wanifinish=1;
      break;
    case 7 :
      for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
          dropblock[2][i][j] = block[6][i][j];
          dropblock[3][i][j] = block[6][i][j];
          dropblock[4][i][j] = block[6][i][j];
        }
      }
      wanifinish=1;
      break;
    case 8 :
      for(int i=1;i<21;i++){
        int ugokasitakaisuu=1;
        while(ugokasitakaisuu!=0){
          ugokasitakaisuu=0;
          for(int j=2;j<11;j++){
            if(box[i][j]!=0&&box[i][j-1]==0){//指定したブロックが空白でなく下側が空白。
              box[i][j-1]=box[i][j];
              box[i][j]=0;
              ugokasitakaisuu++;
            }
          }
        }
      }
      wanifinish=1;
      break;
    case 9 :
      int k=round(random(10,17));//
      for (int i=k; i>1; i--) {
        for (int j=1; j<11; j++) {
          box[20-k+i][j]=box[i][j];
          box[i][j]=0;
        }
      }
      wanifinish=1;
      break;
    case 10 :
      for(int j=1;j<11;j++){
          int ugokasitakaisuu=1;
          while(ugokasitakaisuu!=0){
            ugokasitakaisuu=0;
            for(int i=19;i>0;i--){
              if(box[i][j]!=0&&box[i+1][j]==0){//指定したブロックが空白でなく下側が空白。
                box[i+1][j]=box[i][j];
                box[i][j]=0;
                ugokasitakaisuu++;
              }
            }
          }
        }
      wanifinish=1;
      break;
  }
  if(Space==1){
    if(Spacecheck==1){
      wanidankai=1;//次の段階へ
      Spacecheck=0;
    }
  }
}

void keyPressed() {
  if ( keyCode == UP )keyUP = 1;
  if ( keyCode == RIGHT )keyRight = 1;
  if ( keyCode == LEFT )keyLeft = 1;
  if ( keyCode == DOWN )keyDown = 1;
  if ( keyCode == CONTROL )Ctrl = 1;
  if ( keyCode == SHIFT )Sft = 1;
  if ( keyCode == 32 )Space = 1;//space
  if ( keyCode == 77 )M = 1;//
}
void keyReleased() {
  if ( keyCode == 32 ) {//space
    Space = 0;
    Spacecheck = 1;
  }
  if ( keyCode == UP ) {
    keyUP = 0;
    UPcheck = 1;
  }
  if ( keyCode == RIGHT ) {
    keyRight = 0;
    Rightcheck = 1;
  }
  if ( keyCode == LEFT ) {
    keyLeft = 0;
    Leftcheck = 1;
    Leftcount = 0;
  }
  if ( keyCode == DOWN ) {
    keyDown = 0;
    Downcheck = 1;
  }
  if ( keyCode == CONTROL ) {
    Ctrl = 0;
    Ctrlcheck=1;
    Ctrlcount=0;
  }
  if ( keyCode == SHIFT ) {
    Sft = 0;
    Sftcheck = 1;
    Sftcount=0;
  }
  if ( keyCode ==77 ) {//M
    M = 0;
    Mcheck = 1;
    Mcount=0;
  }
}
void debug() {
  fill(0);
  textSize(35);
  for (int i=0; i<22; i++) {
    for (int j=0; j<12; j++) {
      textFont(english);
      //text(dispbox[i][j],j*30,(i-5)*30);
      //text(dispbox[i][j], j*30, (i-5)*30);
      text(wani,j*30,(i-5)*30);
      //text("y1="+y1,50,50);
      //text(y,50,0);
    }
  }
  for (int i=1; i<21; i++) {
    for (int j=1; j<11; j++) {
      //text(tmpline10[i][j], j*30+500, (i-5)*30);
    }
  }
}
