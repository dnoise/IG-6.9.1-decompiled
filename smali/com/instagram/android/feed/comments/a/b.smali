.class final Lcom/instagram/android/feed/comments/a/b;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/feed/d/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->E()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/comments/a/i;->getCount()I

    move-result v2

    .line 125
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/comments/a/i;->a()I

    move-result v3

    .line 126
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 127
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 131
    :goto_1
    iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/feed/comments/a/i;->a()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_3

    .line 132
    iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v5}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 133
    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 131
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 127
    goto :goto_1

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v1

    iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    .line 139
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->notifyDataSetChanged()V

    .line 142
    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->a()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/feed/comments/a/i;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 149
    if-ge v4, v3, :cond_4

    .line 150
    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v2}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/feed/comments/a/i;->a()I

    move-result v2

    sub-int v2, v3, v2

    add-int/2addr v1, v2

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-virtual {v2}, Lcom/instagram/android/feed/comments/a/a;->v_()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/instagram/feed/d/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/b;->a(Lcom/instagram/feed/d/t;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/b;->a()V

    return-void
.end method
