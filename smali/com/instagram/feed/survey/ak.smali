.class public final Lcom/instagram/feed/survey/ak;
.super Ljava/lang/Object;
.source "SurveyUtil.java"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instagram_ad_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/common/analytics/b;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    sget v0, Lcom/instagram/feed/survey/aj;->b:I

    if-ne p1, v0, :cond_0

    .line 156
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    if-ne p1, v0, :cond_1

    .line 158
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled survey type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/common/analytics/g;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "user_sentiment_survey_presented"

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 54
    sget v1, Lcom/instagram/feed/survey/aj;->a:I

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/common/analytics/b;I)V

    .line 55
    return-void
.end method

.method public static a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/common/analytics/g;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "survey_primer_response"

    invoke-static {v1}, Lcom/instagram/feed/survey/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "responses"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 91
    return-void
.end method

.method public static a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->d()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v0, v1, :cond_0

    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/instagram/feed/survey/ak;->b(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "user_sentiment_survey"

    invoke-direct {v0, v1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "selected_survey_answer"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 151
    sget v1, Lcom/instagram/feed/survey/aj;->a:I

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/common/analytics/b;I)V

    .line 152
    return-void
.end method

.method public static a(Lcom/instagram/feed/survey/j;Lcom/instagram/common/analytics/g;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->f()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "impression"

    invoke-static {v1}, Lcom/instagram/feed/survey/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/common/analytics/b;I)V

    .line 39
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "user_sentiment_survey_presented"

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/instagram/feed/survey/j;Lcom/instagram/common/analytics/g;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "survey_primer_response"

    invoke-static {v1}, Lcom/instagram/feed/survey/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->f()I

    move-result v1

    sget v2, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v1, v2, :cond_0

    .line 68
    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 71
    :cond_0
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 72
    return-void
.end method

.method public static a(Lcom/instagram/feed/survey/j;Lcom/instagram/feed/survey/k;Lcom/instagram/common/analytics/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->f()I

    move-result v0

    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "survey_response"

    invoke-static {v1}, Lcom/instagram/feed/survey/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "responses"

    invoke-virtual {p1}, Lcom/instagram/feed/survey/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "show_primer"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->f()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/common/analytics/b;I)V

    .line 107
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "user_sentiment_survey"

    invoke-direct {v0, v1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "survey_id"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "selected_survey_answer"

    invoke-virtual {p1}, Lcom/instagram/feed/survey/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;[Ljava/lang/String;Lcom/instagram/common/analytics/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "survey_question_response"

    invoke-static {v1}, Lcom/instagram/feed/survey/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v1, "responses"

    invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "show_primer"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "question_id"

    invoke-virtual {p1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v1, "tracking_token"

    invoke-virtual {p0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    .line 133
    sget v1, Lcom/instagram/feed/survey/aj;->b:I

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/common/analytics/b;I)V

    .line 134
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
