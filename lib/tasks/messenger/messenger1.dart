import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'messenger2.dart';

class MessengerScreen extends StatelessWidget {
  final String moSalahUrl =
      "https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0002/23/thumb_122243_default_news_size_5.jpeg";
  final String robbenUrl =
      "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltb2a8432b5b35d009/60ddebdcbcc58b0f8f90d2b5/2934c1cedb39aa8faeaa89533aaf464348a4cd19.jpg";

  final String zlatanUrl =
      "https://alghad.com/wp-content/uploads/2020/09/zlatan-ibrahimovic-ac-milan-2020-21_qzlsn9h3tsej1a79l84h466tb.jpg";
  final String riberyUrl =
      "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt06fc8706cc0fcdac/60dc990615da443b10309a6c/70905020bf49cad21f7b04e389ed01018bd0fc43.jpg";
  final String messiUrl =
      "https://static.dw.com/image/54705687_303.jpg";
  final String lahmUrl =
      "https://img.fcbayern.com/image/upload/t_cms-1x1-seo/v1601358209/cms/public/images/fcbayern-com/homepage/club/historie/hall-of-fame/lahm_ima_250513.jpg";
  final String ronaldoUrl = "https://sportzwiki.com/wp-content/uploads/2022/07/16524735717961.jpg";

  final String legyCyUrl = "https://angartwork.akamaized.net/?id=1138582098&size=296";
  final String marwanPabloUrl = "https://i1.sndcdn.com/artworks-000577259237-oqr249-t500x500.jpg";
  final String trezeguetUrl = "https://english.ahram.org.eg/Media/News/2022/1/30/41_2022-637791824246544884-654.jpg";

  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [

                buildCustomAppBar(),
                const SizedBox(height: 15,),
                buildSearchItem(),
                const SizedBox(height: 15),
                buildYourStoryItemAndOnlineFriends(),
                const SizedBox(height: 15),
                buildOnlineChatItems(ronaldoUrl, "Cristiano Ronaldo","i will leave Man united"),
                buildOnlineChatItems(legyCyUrl, "Legy Cy","i will upload the new Album"),
                buildOfflineChatItems(trezeguetUrl, "Trezeguet"),
                buildOnlineChatItems(zlatanUrl, "Zlatan Ibrahimovic","I am Zlatan Ibrahimovic"),
                buildOnlineChatItems(marwanPabloUrl, "Dead Man","دماغ شغاله مش بتنام "),
                buildOnlineChatItems(riberyUrl, "Ribery","Mia sa mia"),
                buildOnlineChatItems(moSalahUrl, "Mohamed Salah","You :Hello?  How are you? "),
                buildOfflineChatItems(messiUrl, "The GOAT"),
                buildOfflineChatItems(lahmUrl, "Lahm"),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildProfilePicture(){
    return Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          radius: 31,
          backgroundImage: NetworkImage(robbenUrl),
        ),
        const CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
        ),
        const CircleAvatar(
          radius: 10,
          backgroundColor: Colors.red,
          child: Text("2",style:TextStyle(color:Colors.white)),
        ),
      ],
    );
  }


  // put buildProfilePicture +buildTopIconButton in one same function
  Widget buildCustomAppBar(){
    return Row(
      children: [
        buildProfilePicture(),
        const SizedBox(width: 10,),
        const Text( "Chats",
          style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold
          ),
        ),
        const Spacer(),
        MyCircleIconButton(iconData: Icons.camera_alt_rounded, onPressed:(){
          print('hello');
        }),

        const SizedBox(width: 10,),
        MyCircleIconButton(iconData: Icons.edit, onPressed: (){
          print('hello2');
        }),
      ],
    );
  }

  Widget buildSearchItem(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
            hintText: "search",
            prefixIcon:Icon( Icons.search
            ),
            border: InputBorder.none
        ),
      ),
    );
  }

  Widget buildAddToYourStoryItem(){
    return Column(
      children: [
        CircleAvatar(
          radius: 31,
          backgroundColor: Colors.grey[300],
          child: const Icon(Icons.add,color: Colors.black,),
        ),
        const SizedBox(height: 10,),
        const Text("Your Story",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget buildYourStoryItem(){
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children:  [
            const CircleAvatar(
              radius: 31,
              backgroundColor: Colors.grey,
            ),

            const CircleAvatar(
              radius: 29,
              backgroundColor: Colors.white,
            ),

            CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(robbenUrl),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const  Text("Your Story",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,),),
      ],
    );
  }


  Widget buildOnlineFriends(Url,String text){
    return  Container(
      width: 70,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 31,
                backgroundImage: NetworkImage(Url) ,
              ),
              const CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            ],
          ),

          const SizedBox(height: 10,),
          Text(text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  // put buildYourStoryItem +buildOnlineFriends in one function

  Widget buildYourStoryItemAndOnlineFriends(){

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children: [
          buildAddToYourStoryItem(),
          SizedBox(width: 10,),
          buildYourStoryItem(),
          SizedBox(width: 10,),
          buildOnlineFriends(zlatanUrl,"Zlatan Ibrahimovic"),
          buildOnlineFriends(moSalahUrl,"Mohamed salah"),
          buildOnlineFriends(riberyUrl,"Frank ribery"),
          buildOnlineFriends(legyCyUrl,"Legy cy "),
          buildOnlineFriends(ronaldoUrl,"Cristiano ronaldo"),
          buildOnlineFriends(marwanPabloUrl,"Marwan Pablo"),
        ],
      ),
    );
  }



  Widget buildOnlineChatItems(String Url,String text,String textChat){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(Url),),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
              ),
              const CircleAvatar( backgroundColor: Colors.green,
                radius: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          const  SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                SizedBox(height: 5),
                Row(
                  children:  [
                    Expanded(
                      child: Text(
                        textChat,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("8:42 pm",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          const CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 8,
          ),
        ],
      ),
    );
  }


  Widget buildOfflineChatItems(Url,String text){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(Url),),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 12,
              ),
              const CircleAvatar( backgroundColor: Colors.red,
                radius: 10,),
            ],
          ),

          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style:const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                const SizedBox(height: 5),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "You : Hello, how are you  how are you ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text("8:42 pm",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 8,
          ),
        ],
      ),
    );
  }





}
