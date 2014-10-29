.class final Lcom/instagram/feed/survey/z;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

.field final synthetic b:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    iput-object p2, p0, Lcom/instagram/feed/survey/z;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    iget-object v0, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->g(Lcom/instagram/feed/survey/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/instagram/feed/survey/z;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->c(Lcom/instagram/feed/survey/q;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 455
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 456
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    .line 458
    invoke-virtual {v1}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->e()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 459
    :goto_0
    invoke-virtual {v1, v2}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a(Z)V

    .line 462
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 463
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 466
    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v4, v3

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->h(Lcom/instagram/feed/survey/q;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 477
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v4

    .line 458
    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    .line 471
    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->d()V

    .line 473
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 474
    iget-object v0, p0, Lcom/instagram/feed/survey/z;->b:Lcom/instagram/feed/survey/q;

    iget-object v2, p0, Lcom/instagram/feed/survey/z;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    invoke-static {v0, v2, v1}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/q;Lcom/instagram/feed/survey/MultiQuestionSurvey;[Ljava/lang/String;)V

    goto :goto_1
.end method
