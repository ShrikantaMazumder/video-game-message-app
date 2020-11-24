class Topic {
  final String question;
  final String recentAnswers;
  final String answerCount;

  Topic({ this.question, this.answerCount, this.recentAnswers });
}

final fortniteTopics = [
  Topic(question: "Should we drop early?",
    recentAnswers: "I hear this question often, so I figured I'd start a thread. When I drop",
    answerCount: "1241",
  ),
  Topic(question: "Quiting FN because of this?",
    recentAnswers: "I hear this question often, so I figured I'd start a thread. When I drop",
    answerCount: "238",
  ),
];

final pubgTopics = fortniteTopics;