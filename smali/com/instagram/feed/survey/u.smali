.class final Lcom/instagram/feed/survey/u;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

.field final synthetic b:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/instagram/feed/survey/u;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/u;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/instagram/feed/survey/u;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    iget-object v1, p0, Lcom/instagram/feed/survey/u;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->e(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/g/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;Lcom/instagram/common/analytics/g;Z)V

    .line 364
    return-void
.end method
