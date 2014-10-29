.class public Lcom/instagram/feed/a/i;
.super Lcom/instagram/api/k/a/d;
.source "MediaFeedResponse.java"


# instance fields
.field private a:Lcom/instagram/feed/f/a;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/lang/Boolean;

.field t:Z

.field u:Ljava/lang/String;

.field v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    .line 42
    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    .line 43
    return-void
.end method


# virtual methods
.method protected c()Lcom/instagram/feed/a/i;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-boolean v0, p0, Lcom/instagram/feed/a/i;->t:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->e()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/a/i;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    iget-object v2, p0, Lcom/instagram/feed/a/i;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    return-object p0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/a/i;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/instagram/feed/a/i;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/feed/a/i;->e:Ljava/util/List;

    return-object v0
.end method

.method public final u()Lcom/instagram/feed/f/a;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->b:Lcom/instagram/feed/f/b;

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    iget-object v1, p0, Lcom/instagram/feed/a/i;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/a;->a(Ljava/util/List;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/a/i;->a:Lcom/instagram/feed/f/a;

    return-object v0
.end method
