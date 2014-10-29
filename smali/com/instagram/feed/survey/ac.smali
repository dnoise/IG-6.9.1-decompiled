.class final Lcom/instagram/feed/survey/ac;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

.field final synthetic b:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/instagram/feed/survey/ac;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/ac;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/instagram/feed/survey/ac;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/survey/ac;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->c(Lcom/instagram/feed/survey/q;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 171
    iget-object v1, p0, Lcom/instagram/feed/survey/ac;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)Ljava/util/List;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/instagram/feed/survey/ac;->b:Lcom/instagram/feed/survey/q;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/q;->a(Ljava/util/List;Ljava/util/List;)V

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/instagram/feed/survey/ac;->b:Lcom/instagram/feed/survey/q;

    iget-object v2, p0, Lcom/instagram/feed/survey/ac;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-static {v1, v2, v0}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;)V

    .line 176
    return-void
.end method
