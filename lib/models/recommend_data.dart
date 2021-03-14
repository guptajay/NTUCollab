import 'package:ntucollab/models/Tags.dart';
import 'package:ntucollab/models/Comment.dart';

class RecommenderData {
  final int position;
  final String name;
  final List<Tags> tags;
  final String tagText;
  final String offeredBy;
  final String year;
  final String details;
  final String rating1;
  final int ratingValue1;
  final String rating2;
  final int ratingValue2;
  final String rating3;
  final int ratingValue3;
  final List<Comment> comments;
  

  RecommenderData(this.position,
      {this.name,
      this.tags,
      this.tagText,
      this.offeredBy,
      this.year,
      this.details,
      this.ratingValue1,
      this.rating1,
      this.ratingValue2,
      this.rating2,
      this.ratingValue3,
      this.rating3,
      this.comments});
}

List<RecommenderData> recommendModule = [
  RecommenderData(1,
      name: 'CZ4041 Machine Learning',
      tags: [
        Tags(id: 1, name: "Applied Maths"),
        Tags(id: 2, name: "Project"),
        Tags(id: 3, name: "Online")
      ],
      tagText: "Applied Maths, Project, Online",
      offeredBy: "SCSE",
      year: "4",
      details:
          "This course introduces to the basic concepts used in Machine Learning.",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 3,
      comments: [
        Comment(
            comment:
                "This course is quite tough but the lecturer is quite helpful.",
            name: "SCSE - MUNDHRA DIVYESH",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "Easy to score in CA's but final exam is difficult.",
            name: "SCSE - GUPTA JAY",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(2,
      name: 'CZ3005 Artificial Intelligence',
      tags: [
        Tags(id: 4, name: "AI"),
        Tags(id: 5, name: "Calculus"),
        Tags(id: 6, name: "Hard")
      ],
      tagText: "AI, Calculus, Hard",
      offeredBy: "SCSE",
      year: "3",
      details:
          "This course introduces to the algorithms applied in Artificial Intelligence.",
      rating1: "Difficulty",
      ratingValue1: 2,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 3,
      comments: [
        Comment(
            comment:
                "Very easy to score in finals. Group project is difficult.",
            name: "SCSE - BANSAL ADITYA",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "Choose good group members for the project.",
            name: "SCSE - BHATIA RITIK",
            commentCount: "4",
            likeCount: "5"),
      ]),
  RecommenderData(3,
      name: 'CZ3006 Networking',
      tags: [Tags(id: 7, name: "Network"), Tags(id: 8, name: "Algebra")],
      tagText: "Network, Algebra",
      offeredBy: "SCSE",
      year: "3",
      details:
          "This course introduces to the concepts used in Network connection and topology.",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 5,
      comments: [
        Comment(
            comment:
                "Lot of mathematics involved in this course.",
            name: "SCSE - JUSTIN ONG",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "Quite theory based lectures.",
            name: "SCSE - CHEN LIM",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(4,
      name: 'CZ2002 Software Engineering',
      tags: [
        Tags(id: 9, name: "Software"),
        Tags(id: 10, name: "UML"),
        Tags(id: 11, name: "Project")
      ],
      tagText: "Software, UML, Project",
      offeredBy: "SCSE",
      year: "2",
      details:
          "This course teaches about the Software Engineering principles and techniques.",
      rating1: "Difficulty",
      ratingValue1: 3,
      rating2: "Time",
      ratingValue2: 5,
      rating3: "Demand",
      ratingValue3: 4,
      comments: [
        Comment(
            comment:
                "Loved the course. It teached you how the corporate world works.",
            name: "SCSE - MUNDHRA DIVYESH",
            commentCount: "2",
            likeCount: "7"),
        Comment(
            comment: "Theory based final exam and CA's",
            name: "SCSE - CHOW LIM",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(5,
      name: 'ET0001 Innovation',
      tags: [
        Tags(id: 9, name: "Entrepreneurship"),
        Tags(id: 10, name: "Innovation"),
      ],
      tagText: "Entrepreneurship, Innovation",
      offeredBy: "SSS",
      year: "3",
      details:
      "This course teaches about the modern entrepreneurship techniques and world econonic landscape.",
      rating1: "Difficulty",
      ratingValue1: 1,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 1,
      comments: [
        Comment(
            comment:
            "Loved the course. It was fully delivered online.",
            name: "SCSE - MUNDHRA DIVYESH",
            commentCount: "2",
            likeCount: "7"),
        Comment(
            comment: "It taught me so much about entreprenuership.",
            name: "SCSE - GUPTA JAY",
            commentCount: "1",
            likeCount: "2"),
      ]),
];


List<RecommenderData> recommendClubs = [
  RecommenderData(1,
      name: 'NTU Open Source Society',
      tags: [
        Tags(id: 1, name: "Coding"),
        Tags(id: 2, name: "Learning"),
        Tags(id: 3, name: "Collaboration")
      ],
      tagText: "Coding, Learning, Collaboration",
      details:
      "This club holds sessions to train individuals on technical skills. People can collaborate and contribute to the open source community.",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 3,
      comments: [
        Comment(
            comment:
            "The club is very useful for beginners who want to learn technical skills.",
            name: "SCSE - XIN LIM",
            commentCount: "6",
            likeCount: "8"),
        Comment(
            comment: "The club take special initiatives to hold collaborative sessions among members.",
            name: "SCSE - GUPTA JAY",
            commentCount: "6",
            likeCount: "7"),
      ]),
  RecommenderData(2,
      name: 'NTU Red Cross Society',
      tags: [
        Tags(id: 4, name: "Health"),
        Tags(id: 5, name: "Wellbeing"),
        Tags(id: 6, name: "Community")
      ],
      tagText: "Health, Wellbeing, Community",
      details:
      "This club holds sessions and events to contribute to the community through chairty, donations and fundraising",
      rating1: "Difficulty",
      ratingValue1: 2,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 3,
      comments: [
        Comment(
            comment:
            "The club lacks discipline.",
            name: "MAE - LU YONG",
            commentCount: "5",
            likeCount: "1"),
        Comment(
            comment: "I felt good giving back to the commmunity by being a part of this club.",
            name: "CEE - KUMAR RAM",
            commentCount: "4",
            likeCount: "5"),
      ]),
  RecommenderData(3,
      name: 'NTU Archery Club',
      tags: [Tags(id: 7, name: "Sports"), Tags(id: 8, name: "Focus")],
      tagText: "Sports, Focus",
      details:
      "This club trains you on archery sessions",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 5,
      comments: [
        Comment(
            comment:
            "The training sessions are very tiring.",
            name: "BUS - JUSTIN ONG",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "The training sessions are quite useful for beginners but not that helpful for pros",
            name: "BIE - CHEN LIM",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(4,
      name: 'NTU Toastmasters',
      tags: [
        Tags(id: 9, name: "Public Speaking"),
        Tags(id: 10, name: "Confidence"),
        Tags(id: 11, name: "Collaboration")
      ],
      tagText: "Public Speaking, Confidence, Collaboration",
      details:
      "The club trains you ont public speaking techniques and approaches. It organizes collaborative debating and discussion sessions which helps in achieveing confidence for people who are shy.",
      rating1: "Difficulty",
      ratingValue1: 3,
      rating2: "Time",
      ratingValue2: 5,
      rating3: "Demand",
      ratingValue3: 4,
      comments: [
        Comment(
            comment:
            "Extremely beneficial club for a shy person who wants to gain public speaking skills.",
            name: "SCSE - MUNDHRA DIVYESH",
            commentCount: "2",
            likeCount: "7"),
        Comment(
            comment: "This club requires a very high time commitment.",
            name: "SCSE - CHOW LIM",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(5,
      name: 'NTU SCSE Club',
      tags: [
        Tags(id: 9, name: "Management"),
        Tags(id: 10, name: "Academic"),
        Tags(id: 11, name: "Collaboration")
      ],
      tagText: "Management, Academic, Collaboration",
      details:
      "The NTU SCSE Club is an official student body for graduate students of the School of Computer Science and Engineering in NTU.",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 5,
      rating3: "Demand",
      ratingValue3: 4,
      comments: [
        Comment(
            comment:
            "Very organized and orderly club to learn management skills.",
            name: "MAE - DAMANI MEHUL",
            commentCount: "2",
            likeCount: "9"),
        Comment(
            comment: "The elections for the club positions are very competitive",
            name: "SCSE - KANODIA RITWIK",
            commentCount: "1",
            likeCount: "5"),
      ])
];


List<RecommenderData> recommendGroups = [
  RecommenderData(1,
      name: 'Debating',
      tags: [
        Tags(id: 1, name: "Speaking"),
        Tags(id: 2, name: "Impromptu"),
        Tags(id: 3, name: "Competitive")
      ],
      tagText: "Speaking, Impromptu, Competitive",
      details:
      "This group helps students to become more informed about political and global affairs, or provide a venue for students to train for debate competitions with local school, or at a national level.",
      rating1: "Difficulty",
      ratingValue1: 4,
      rating2: "Time",
      ratingValue2: 4,
      rating3: "Demand",
      ratingValue3: 5,
      comments: [
        Comment(
            comment:
            "The admins of this group are very supportive.",
            name: "BUS - SOMANI PALAK",
            commentCount: "3",
            likeCount: "1"),
        Comment(
            comment: "I learnt a lot of skills by joining this group.",
            name: "SCSE - GUPTA JAY",
            commentCount: "1",
            likeCount: "5"),
      ]),
  RecommenderData(2,
      name: 'Hiking',
      tags: [
        Tags(id: 4, name: "Sports"),
        Tags(id: 5, name: "Outdoors"),
      ],
      tagText: "Sports, Outdoors",
      details:
      "Join this group for our weekly trips to many trails across Singapore.",
      rating1: "Difficulty",
      ratingValue1: 2,
      rating2: "Time",
      ratingValue2: 3,
      rating3: "Demand",
      ratingValue3: 5,
      comments: [
        Comment(
            comment:
            "I improved my fitness level a lot after joining this group.",
            name: "SCSE - BANSAL ADITYA",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "All the members are quite fun.",
            name: "SCSE - DANDAPATH SOHAM",
            commentCount: "4",
            likeCount: "5"),
      ]),
  RecommenderData(3,
      name: 'Hackathon',
      tags: [Tags(id: 7, name: "Coding"), Tags(id: 8, name: "Competitive"), Tags(id: 8, name: "Online")],
      tagText: "Coding, Competitve, Online",
      details:
      "Get the latest announcements from Hackathons in NTU and across Singapore.",
      rating1: "Difficulty",
      ratingValue1: 2,
      rating2: "Time",
      ratingValue2: 2,
      rating3: "Demand",
      ratingValue3: 1,
      comments: [
        Comment(
            comment:
            "This groups helps me to be up to date with all the new Hackathons.",
            name: "SCSE - JUSTIN ONG",
            commentCount: "3",
            likeCount: "2"),
        Comment(
            comment: "I learnt a lot of new technologies over the past semester, thanks to the various Hackathons.",
            name: "SCSE - CHEN LIM",
            commentCount: "7",
            likeCount: "9"),
      ])
];

