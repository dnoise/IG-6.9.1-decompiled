.class final Lcom/instagram/feed/survey/w;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ViewSwitcher;

.field final synthetic b:Lcom/instagram/feed/survey/j;

.field final synthetic c:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Landroid/widget/ViewSwitcher;Lcom/instagram/feed/survey/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/instagram/feed/survey/w;->c:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/w;->a:Landroid/widget/ViewSwitcher;

    iput-object p3, p0, Lcom/instagram/feed/survey/w;->b:Lcom/instagram/feed/survey/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/instagram/feed/survey/w;->c:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->g(Lcom/instagram/feed/survey/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/k;

    .line 402
    iget-object v1, p0, Lcom/instagram/feed/survey/w;->a:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 404
    iget-object v1, p0, Lcom/instagram/feed/survey/w;->b:Lcom/instagram/feed/survey/j;

    iget-object v2, p0, Lcom/instagram/feed/survey/w;->c:Lcom/instagram/feed/survey/q;

    invoke-static {v2}, Lcom/instagram/feed/survey/q;->e(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/g/a;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/instagram/feed/survey/ak;->a(Lcom/instagram/feed/survey/j;Lcom/instagram/feed/survey/k;Lcom/instagram/common/analytics/g;)V

    .line 406
    iget-object v0, p0, Lcom/instagram/feed/survey/w;->c:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->f(Lcom/instagram/feed/survey/q;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 408
    :cond_0
    return-void
.end method
