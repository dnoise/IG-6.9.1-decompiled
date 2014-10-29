.class final Lcom/instagram/android/people/b/b;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"

# interfaces
.implements Lcom/instagram/android/people/widget/f;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->a(Landroid/support/v4/app/s;)V

    .line 83
    return-void
.end method

.method public final a(Landroid/graphics/PointF;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;Z)Z

    .line 77
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->b(Lcom/instagram/android/people/b/a;)V

    .line 78
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->p()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "PeopleTagSearch"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->c(Ljava/lang/String;)Z

    .line 98
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;Z)Z

    .line 99
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->b(Lcom/instagram/android/people/b/a;)V

    .line 100
    return-void
.end method

.method public final b(Landroid/graphics/PointF;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;

    invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V

    .line 90
    :cond_0
    return-void
.end method
