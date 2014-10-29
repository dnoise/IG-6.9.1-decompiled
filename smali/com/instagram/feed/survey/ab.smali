.class final Lcom/instagram/feed/survey/ab;
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
    .line 151
    iput-object p1, p0, Lcom/instagram/feed/survey/ab;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/ab;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/feed/survey/ab;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/q;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/facebook/aw;->dialog_survey_results:I

    sget v3, Lcom/facebook/ba;->SurveyResultsDialog:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/instagram/feed/survey/ab;->b:Lcom/instagram/feed/survey/q;

    iget-object v2, p0, Lcom/instagram/feed/survey/ab;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-static {v1, v0, v2}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/q;Landroid/app/Dialog;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 161
    return-void
.end method
