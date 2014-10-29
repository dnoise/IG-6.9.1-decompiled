.class public final Lcom/instagram/android/fragment/ek;
.super Lcom/instagram/common/a/a/j;
.source "SearchUsersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/android/c/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ej;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/ej;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/instagram/android/fragment/ek;->b:Ljava/lang/String;

    .line 137
    iput-wide p3, p0, Lcom/instagram/android/fragment/ek;->c:J

    .line 138
    return-void
.end method

.method private a(Lcom/instagram/android/c/b/c;)V
    .locals 5
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ej;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-static {v0}, Lcom/instagram/android/fragment/ej;->a(Lcom/instagram/android/fragment/ej;)Lcom/instagram/android/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ek;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/instagram/android/c/b/c;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/j/e;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/fragment/ek;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->e(Z)V

    .line 148
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ej;->Y()Lcom/instagram/android/feed/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    iget-object v2, p0, Lcom/instagram/android/fragment/ek;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/instagram/android/fragment/ek;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/android/feed/a;->a(Lcom/instagram/common/analytics/g;Ljava/lang/String;J)V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    iget-object v0, v0, Lcom/instagram/android/fragment/ej;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {p1}, Lcom/instagram/android/c/b/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/k/a/a;->d(Ljava/util/List;)V

    .line 153
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ej;->Z()V

    .line 154
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ej;->aa()V

    .line 156
    :cond_1
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ej;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 161
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->d(Z)V

    .line 162
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->c(Z)V

    .line 163
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/c/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 168
    invoke-direct {p0}, Lcom/instagram/android/fragment/ek;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->d(Z)V

    .line 170
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->c(Z)V

    .line 172
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    check-cast p1, Lcom/instagram/android/c/b/c;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ek;->a(Lcom/instagram/android/c/b/c;)V

    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/android/c/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 177
    invoke-direct {p0}, Lcom/instagram/android/fragment/ek;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/instagram/android/fragment/ek;->a:Lcom/instagram/android/fragment/ej;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ej;->e(Z)V

    .line 180
    :cond_0
    return-void
.end method
