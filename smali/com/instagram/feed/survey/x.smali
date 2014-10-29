.class final Lcom/instagram/feed/survey/x;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/j;

.field final synthetic b:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/instagram/feed/survey/x;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/x;->a:Lcom/instagram/feed/survey/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/instagram/feed/survey/x;->a:Lcom/instagram/feed/survey/j;

    iget-object v1, p0, Lcom/instagram/feed/survey/x;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->e(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/j;Lcom/instagram/common/analytics/g;)V

    .line 417
    iget-object v0, p0, Lcom/instagram/feed/survey/x;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->f(Lcom/instagram/feed/survey/q;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    return-void
.end method
