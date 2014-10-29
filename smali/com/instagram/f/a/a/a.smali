.class public abstract Lcom/instagram/f/a/a/a;
.super Lcom/instagram/api/j/b;
.source "AbstractHideDeleteDirectShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/feed/d/l;

.field private final d:Lcom/instagram/f/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;Lcom/instagram/f/a/a/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 42
    iput-object p3, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    .line 43
    iput-object p4, p0, Lcom/instagram/f/a/a/a;->d:Lcom/instagram/f/a/a/b;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    .line 85
    iget-object v0, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 86
    const-string v0, "InboxFragment.UPDATE_INBOX"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method public final bridge synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    const-string v0, "direct_share/%s/%s/?media_type=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/f/a/a/a;->d:Lcom/instagram/f/a/a/b;

    invoke-static {v3}, Lcom/instagram/f/a/a/b;->a(Lcom/instagram/f/a/a/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v3}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    iget-object v0, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    .line 73
    iget-object v0, p0, Lcom/instagram/f/a/a/a;->a:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 74
    const-string v0, "InboxFragment.UPDATE_INBOX"

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Ljava/lang/String;)Z

    .line 75
    return-void
.end method
