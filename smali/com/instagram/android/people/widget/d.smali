.class public final Lcom/instagram/android/people/widget/d;
.super Lcom/instagram/android/k/a/a;
.source "PeopleTaggingUserListAdapter.java"


# instance fields
.field private o:Lcom/instagram/model/people/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/k/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/user/follow/h;)V

    .line 102
    iput-object p6, p0, Lcom/instagram/android/people/widget/d;->o:Lcom/instagram/model/people/b;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/instagram/android/people/widget/d;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;ZZLcom/instagram/model/people/b;Lcom/instagram/user/follow/h;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/instagram/android/people/widget/d;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_no_results_dark:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 123
    sget v0, Lcom/facebook/av;->row_no_results_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/facebook/az;->no_users_found:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    return-object v1
.end method

.method public final b()Lcom/instagram/android/k/a/f;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/k/a/f;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/instagram/android/people/d/a;

    invoke-direct {v0}, Lcom/instagram/android/people/d/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/k/a/f;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/d;->h:Lcom/instagram/android/k/a/f;

    return-object v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/instagram/android/people/widget/a;

    iget-object v1, p0, Lcom/instagram/android/people/widget/d;->o:Lcom/instagram/model/people/b;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/people/widget/a;-><init>(Lcom/instagram/android/people/widget/d;Lcom/instagram/model/people/b;)V

    iput-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/widget/d;->g:Landroid/widget/Filter;

    return-object v0
.end method
