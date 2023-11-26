import 'package:flutter/material.dart';

class TeamMember {
  final String name;
  final String position;
  final String imageUrl;
  final String description;

  TeamMember({
    this.name = '',
    this.position = '',
    this.imageUrl = '',
    this.description = '',
  });
}

class AboutPage extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: "Luffy",
      position: "Programmer",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/01/ssstikio_1690554354361-594065902.jpeg",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    ),
    TeamMember(
      name: "Roronoa Zoro",
      position: "Programmer",
      imageUrl:
          "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/692/2023/09/25/images-21-1968474379.jpeg",
      description:
          "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    ),
    // Add more team members as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'About Social Hub',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Team Developer - Social Hub',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: teamMembers.length,
                itemBuilder: (context, index) {
                  return _buildTeamMemberCard(teamMembers[index]);
                },
              ),
              SizedBox(height: 20),
              AppDescription(),
              SizedBox(height: 20),
              CopyrightSection(),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget _buildTeamMemberCard(TeamMember teamMember) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(teamMember.imageUrl),
        ),
        title: Text(teamMember.name),
        subtitle: Text(teamMember.position),
        onTap: () {
          _showDialog(teamMember);
        },
      ),
    );
  }

  void _showDialog(TeamMember teamMember) {
    var context;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(teamMember.name),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                teamMember.imageUrl,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              Text(teamMember.position),
              SizedBox(height: 10.0),
              Text(teamMember.description),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

class AppDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        // Tambahkan penjelasan aplikasi Anda di sini
        Text('Aplikasi ini adalah...'),
      ],
    );
  }
}

class CopyrightSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Text('© 2023 Social Hub STTB'),
      ],
    );
  }
}
