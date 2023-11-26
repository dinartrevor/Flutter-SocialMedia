import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart';
import 'story.dart';
import 'post.dart';
import 'login_page.dart';
import 'about.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> _stories = [
    Story(
        "https://awsimages.detik.net.id/community/media/visual/2021/12/21/raisa.png?w=1200",
        "Cerita Anda"),
    Story(
        "https://qph.cf2.quoracdn.net/main-qimg-ccfa05bffe6b47c4ad4e7649c713fb21",
        "Abdul Kholik Fajar"),
    Story(
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/692/2023/09/25/images-21-1968474379.jpeg",
        "Azis Banon Sanjaya"),
    Story(
        "https://qph.cf2.quoracdn.net/main-qimg-ccfa05bffe6b47c4ad4e7649c713fb21",
        "Gery Pratama Putra"),
  ];

  List<Post> posts = [
    Post(
        username: "sttbbandung",
        userImage:
            "https://pbs.twimg.com/profile_images/1022014132042776576/kotRPYpl_400x400.jpg",
        postImage:
            "https://cdn.inflact.com/media/399350531_341030315278393_2081026596419574664_n.webp?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-15%2F399350531_341030315278393_2081026596419574664_n.webp%3Fstp%3Ddst-jpg_e35%26_nc_ht%3Dscontent.cdninstagram.com%26_nc_cat%3D101%26_nc_ohc%3DvqA3sGpUXEIAX90vMRn%26edm%3DAPs17CUBAAAA%26ccb%3D7-5%26oh%3D00_AfBaOYwXZQOpWof17UhfGrwOBYVChhdOZR7duOBRidxX8Q%26oe%3D656632E5%26_nc_sid%3D10d13b&time=1700841600&key=99eb2d39afe297670db697286d8020af",
        caption: "Hallo Mahasiswa STTB Perkenalkan Barudak Bogo Saparua "),
    Post(
        username: "bem_Sttbbandung",
        userImage:
            "https://scontent.fbdo9-1.fna.fbcdn.net/v/t39.30808-6/304843811_616097173284819_4193123655790486475_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGk6G88WMcmtwFW6Nd_l9GQzQ0bGexuabDNDRsZ7G5psDfcMMrUQLGOTMYprOE98pdU84ow2vLOh1X3TUenyXk7&_nc_ohc=1gqVZkItlyoAX9-6tgW&_nc_ht=scontent.fbdo9-1.fna&oh=00_AfAF6e2EjNx5NudNjGuVjQDgqXXlTvwraTHIjrPFtPUrvA&oe=6566A239",
        postImage:
            "https://cdn.inflact.com/media/385227711_1506419603444942_3446022799700924234_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-15%2F385227711_1506419603444942_3446022799700924234_n.jpg%3Fstp%3Ddst-jpg_e15_fr_s1080x1080%26_nc_ht%3Dscontent.cdninstagram.com%26_nc_cat%3D102%26_nc_ohc%3D6wKGyKOmlXkAX9y5iEd%26edm%3DAPs17CUBAAAA%26ccb%3D7-5%26oh%3D00_AfDQd0G-CPSGMtHuj6_8bPtorqZXHZh1Oe9cDcckCHO7hA%26oe%3D6565F9BB%26_nc_sid%3D10d13b&time=1700841600&key=4e1305e2a720dac399ebd0261d7d8990",
        caption: "Well"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        centerTitle: true,
        title: Text(
          "STTB Social Hub",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.loupe,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ),
              );
            },
            icon: Icon(
              Icons.info,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(
                    name: '',
                    email: '',
                    password: '',
                    dateOfBirth: '',
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Stories",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                vertical: 20,
              ),
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: _stories.map((story) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                          border: Border.all(
                            width: 3,
                            color: Color(0xFF8e44ad),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(
                            2,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image(
                              image: NetworkImage(story.image),
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(story.name),
                    ],
                  );
                }).toList(),
              ),
            ),
            // posts
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image(
                                      image: NetworkImage(
                                        posts[i].userImage,
                                      ),
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(posts[i].username),
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.settings),
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                        Image(
                          image: NetworkImage(
                            posts[i].postImage,
                          ),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.heart_broken),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add_comment),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Liked By ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "Abdul Kholik Fajar,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Azis Banon Sanjaya ,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Gery Pratama Putra,",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " And",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " 9999 Lainnya",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // caption
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: posts[i].username,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " ${posts[i].caption}",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // post date
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "November 2023",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
