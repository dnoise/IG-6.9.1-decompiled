.class final Lcom/instagram/android/activity/u;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Lcom/instagram/base/activity/tabactivity/g;


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method private constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/activity/MainTabActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/instagram/android/activity/u;-><init>(Lcom/instagram/android/activity/MainTabActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 642
    invoke-static {p1}, Lcom/instagram/android/activity/t;->valueOf(Ljava/lang/String;)Lcom/instagram/android/activity/t;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/t;->f:Lcom/instagram/android/activity/t;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v2, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v2}, Lcom/instagram/android/activity/MainTabActivity;->f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)V

    .line 651
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->h(Lcom/instagram/android/activity/MainTabActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 652
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 653
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v2}, Lcom/instagram/android/activity/MainTabActivity;->f(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/android/activity/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 656
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/activity/u;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1, v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/MainTabActivity;Lcom/instagram/android/activity/t;)Lcom/instagram/android/activity/t;

    .line 658
    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/e/a;->c()V

    .line 659
    return-void
.end method
