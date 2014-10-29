.class final Lcom/instagram/android/fragment/fb;
.super Lcom/instagram/api/j/f;
.source "SuggestedUserFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/f",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/user/d/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ey;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ey;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-static {v0}, Lcom/instagram/android/fragment/ey;->a(Lcom/instagram/android/fragment/ey;)V

    .line 197
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->Z()Lcom/instagram/android/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/a/m;->a(Ljava/util/ArrayList;)V

    .line 198
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/ey;->a(Ljava/util/ArrayList;)V

    .line 199
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 200
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ey;->a(Lcom/instagram/android/fragment/ey;Z)Z

    .line 214
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/instagram/android/fragment/ey;->ab:Z

    .line 215
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->W()V

    .line 216
    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/user/d/a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->E()Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->n()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->tabbed_explore_people_fail:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fb;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/ey;->a(Lcom/instagram/android/fragment/ey;Z)Z

    .line 221
    iget-object v0, p0, Lcom/instagram/android/fragment/fb;->a:Lcom/instagram/android/fragment/ey;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ey;->X()V

    .line 222
    return-void
.end method
