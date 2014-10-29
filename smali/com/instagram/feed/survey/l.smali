.class public final Lcom/instagram/feed/survey/l;
.super Landroid/widget/BaseAdapter;
.source "SurveyAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Lcom/instagram/feed/survey/j;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/survey/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/instagram/feed/survey/l;->b:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/instagram/feed/survey/l;->a:Lcom/instagram/feed/survey/j;

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p2}, Lcom/instagram/feed/survey/l;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unhandled view type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :pswitch_0
    sget v0, Lcom/facebook/aw;->sentiment_tool_answer:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    return-object v0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0, p2}, Lcom/instagram/feed/survey/l;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View type unhandled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/feed/survey/l;->a:Lcom/instagram/feed/survey/j;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/k;

    move-object v1, p1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/instagram/feed/survey/l;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    sget v0, Lcom/facebook/au;->dialog_row_bottom:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 82
    return-void

    .line 80
    :cond_0
    sget v0, Lcom/facebook/au;->bg_simple_row:I

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/feed/survey/l;->a:Lcom/instagram/feed/survey/j;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/instagram/feed/survey/l;->a:Lcom/instagram/feed/survey/j;

    invoke-virtual {v0}, Lcom/instagram/feed/survey/j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/instagram/feed/survey/l;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "View mode not handled (for item view type)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter

    .prologue
    .line 42
    if-nez p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/instagram/feed/survey/l;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/instagram/feed/survey/l;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p2

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/survey/l;->b:Landroid/content/Context;

    invoke-direct {p0, p2, p1}, Lcom/instagram/feed/survey/l;->a(Landroid/view/View;I)V

    .line 47
    return-object p2
.end method
