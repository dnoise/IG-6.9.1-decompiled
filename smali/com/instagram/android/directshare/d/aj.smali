.class public final Lcom/instagram/android/directshare/d/aj;
.super Ljava/lang/Object;
.source "DirectSharePermalinkRecipientsRowViewBinder.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget v1, Lcom/facebook/aw;->layout_directshare_permalink_recipients:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/instagram/android/directshare/d/an;

    invoke-direct {v2, v3}, Lcom/instagram/android/directshare/d/an;-><init>(B)V

    .line 32
    sget v0, Lcom/facebook/av;->sender_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/widget/RecipientView;

    invoke-static {v2, v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;Lcom/instagram/android/directshare/widget/RecipientView;)Lcom/instagram/android/directshare/widget/RecipientView;

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    return-object v1
.end method

.method public static a(Landroid/view/View;Lcom/instagram/model/b/a;Ljava/util/List;Lcom/instagram/android/directshare/d/am;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/instagram/model/b/a;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/b/a;",
            ">;",
            "Lcom/instagram/android/directshare/d/am;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/d/an;

    .line 46
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setAvatarUrl(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->c()Z

    move-result v2

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->b()Z

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/instagram/android/directshare/widget/RecipientView;->a(ZZZZ)V

    .line 49
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;)Lcom/instagram/android/directshare/widget/RecipientView;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/directshare/d/ak;

    invoke-direct {v2, p3, p1, v0}, Lcom/instagram/android/directshare/d/ak;-><init>(Lcom/instagram/android/directshare/d/am;Lcom/instagram/model/b/a;Lcom/instagram/android/directshare/d/an;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 57
    sget v1, Lcom/facebook/av;->recipients_container:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v2

    float-to-int v5, v2

    .line 61
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v2}, Lcom/instagram/android/directshare/d/an;->a(Lcom/instagram/android/directshare/d/an;Ljava/util/List;)Ljava/util/List;

    move v3, v4

    .line 62
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 63
    new-instance v2, Lcom/instagram/android/directshare/widget/RecipientView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/instagram/android/directshare/widget/RecipientView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v2, v7}, Lcom/instagram/android/directshare/widget/RecipientView;->setClickable(Z)V

    .line 65
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 69
    invoke-virtual {v2}, Lcom/instagram/android/directshare/widget/RecipientView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 74
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 75
    invoke-static {v0}, Lcom/instagram/android/directshare/d/an;->b(Lcom/instagram/android/directshare/d/an;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/directshare/widget/RecipientView;

    .line 76
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/model/b/a;

    .line 77
    invoke-virtual {v2}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/instagram/android/directshare/widget/RecipientView;->setAvatarUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Lcom/instagram/model/b/a;->c()Z

    move-result v3

    invoke-virtual {v2}, Lcom/instagram/model/b/a;->d()Z

    move-result v5

    invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z

    move-result v2

    invoke-virtual {v1, v3, v5, v2, v7}, Lcom/instagram/android/directshare/widget/RecipientView;->a(ZZZZ)V

    .line 82
    new-instance v2, Lcom/instagram/android/directshare/d/al;

    invoke-direct {v2, p3, p2, v4, v1}, Lcom/instagram/android/directshare/d/al;-><init>(Lcom/instagram/android/directshare/d/am;Ljava/util/List;ILcom/instagram/android/directshare/widget/RecipientView;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/directshare/widget/RecipientView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method
