.class final Lcom/instagram/ui/widget/a/d;
.super Landroid/widget/LinearLayout;
.source "CustomToastView.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/ui/widget/a/d;->a:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Lcom/instagram/ui/widget/a/d;->a()V

    .line 26
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 39
    sget v0, Lcom/facebook/au;->notification_tooltip:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/d;->setBackgroundResource(I)V

    .line 40
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/instagram/ui/widget/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->view_custom_toast:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/instagram/ui/widget/a/d;->a:Ljava/util/List;

    sget v0, Lcom/facebook/av;->toast_inbox_textview_1:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/instagram/ui/widget/a/d;->a:Ljava/util/List;

    sget v0, Lcom/facebook/av;->toast_inbox_textview_2:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/instagram/ui/widget/a/d;->a:Ljava/util/List;

    sget v0, Lcom/facebook/av;->toast_inbox_textview_3:I

    invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method private static a(Landroid/widget/TextView;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 88
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/ui/widget/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    if-lez p1, :cond_0

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    sget v2, Lcom/facebook/au;->notification_comment_icon:I

    invoke-static {v0, p1, v2}, Lcom/instagram/ui/widget/a/d;->a(Landroid/widget/TextView;II)V

    .line 58
    :cond_0
    if-lez p2, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    sget v2, Lcom/facebook/au;->notification_like_icon:I

    invoke-static {v0, p2, v2}, Lcom/instagram/ui/widget/a/d;->a(Landroid/widget/TextView;II)V

    .line 63
    :cond_1
    if-lez p3, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p4, :cond_3

    .line 66
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    sget v2, Lcom/facebook/au;->notification_people_icon:I

    invoke-static {v0, p3, v2}, Lcom/instagram/ui/widget/a/d;->a(Landroid/widget/TextView;II)V

    .line 70
    :cond_3
    if-lez p4, :cond_4

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    sget v2, Lcom/facebook/au;->notification_tag_icon:I

    invoke-static {v0, p4, v2}, Lcom/instagram/ui/widget/a/d;->a(Landroid/widget/TextView;II)V

    .line 75
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/ui/widget/a/d;->a(Landroid/view/View;)V

    goto :goto_0

    .line 78
    :cond_5
    return-void
.end method
