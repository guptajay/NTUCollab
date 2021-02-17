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

List<RecommenderData> recommendData = [
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
      ])
];
