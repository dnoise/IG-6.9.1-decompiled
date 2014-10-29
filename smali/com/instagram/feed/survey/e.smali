.class public final Lcom/instagram/feed/survey/e;
.super Landroid/widget/BaseAdapter;
.source "MultiQuestionSurveyAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    .line 22
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/instagram/feed/survey/e;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No item view type found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/instagram/feed/survey/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/instagram/feed/survey/n;->a(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p2}, Lcom/instagram/feed/survey/e;->getItemViewType(I)I

    move-result v0

    .line 71
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/o;

    iget-object v1, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    invoke-static {v0, v1, p2}, Lcom/instagram/feed/survey/n;->a(Lcom/instagram/feed/survey/o;Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;I)V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 36
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    invoke-direct {p0, p1, p3}, Lcom/instagram/feed/survey/e;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 44
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/instagram/feed/survey/e;->a(Landroid/view/View;I)V

    .line 45
    return-object p2
.end method
