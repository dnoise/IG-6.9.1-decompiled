.class public final Lcom/instagram/android/people/d/a;
.super Lcom/instagram/android/k/a/f;
.source "PeopleRowViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/instagram/android/k/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_user_dark:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/instagram/android/k/a/f;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;Lcom/instagram/user/follow/h;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
