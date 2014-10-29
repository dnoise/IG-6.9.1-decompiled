.class public final Lcom/instagram/feed/d/b;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/feed/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/instagram/user/c/a;

.field f:I

.field private g:Lcom/instagram/feed/d/l;

.field private h:Lcom/instagram/feed/d/c;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/instagram/feed/d/d;->a:I

    iput v0, p0, Lcom/instagram/feed/d/b;->f:I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    .line 131
    return-void
.end method

.method private a(Lcom/instagram/feed/d/b;)I
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const/4 v0, 0x0

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget v2, p0, Lcom/instagram/feed/d/b;->f:I

    iget v3, p1, Lcom/instagram/feed/d/b;->f:I

    if-eq v2, v3, :cond_2

    .line 68
    iget v2, p0, Lcom/instagram/feed/d/b;->f:I

    sget v3, Lcom/instagram/feed/d/d;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 71
    :cond_2
    iget-wide v2, p0, Lcom/instagram/feed/d/b;->b:J

    iget-wide v4, p1, Lcom/instagram/feed/d/b;->b:J

    sub-long/2addr v2, v4

    .line 73
    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    .line 75
    iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 82
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 85
    :cond_4
    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static a(Lcom/fasterxml/jackson/a/l;)J
    .locals 4
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    :goto_0
    return-wide v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private o()J
    .locals 4

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/instagram/feed/d/b;->b:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final a()Lcom/instagram/feed/d/b;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    .line 135
    return-object p0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/instagram/feed/d/b;->o()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/instagram/o/g/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/instagram/feed/d/b;->b:J

    .line 169
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;

    .line 206
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/instagram/feed/d/b;->g:Lcom/instagram/feed/d/l;

    .line 181
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/instagram/feed/d/b;->c:Ljava/lang/String;

    .line 182
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/instagram/feed/d/b;->e:Lcom/instagram/user/c/a;

    .line 198
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/instagram/feed/d/b;->d:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    sget-object v0, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;

    iput-object v0, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;

    .line 228
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 229
    iput-object p2, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;

    .line 231
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/instagram/feed/d/b;->b:J

    return-wide v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    check-cast p1, Lcom/instagram/feed/d/b;

    .end local p1
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/b;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/instagram/feed/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/instagram/feed/d/l;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/instagram/feed/d/b;->g:Lcom/instagram/feed/d/l;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/instagram/feed/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/instagram/feed/d/b;->e:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final h()Lcom/instagram/feed/d/c;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/instagram/feed/d/b;->h:Lcom/instagram/feed/d/c;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/instagram/feed/d/b;->f:I

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/instagram/feed/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/instagram/feed/d/c;->e:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    .line 235
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->G()V

    .line 236
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/instagram/feed/d/c;->d:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    .line 240
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->H()V

    .line 241
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/c;)V

    .line 245
    invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->I()V

    .line 246
    return-void
.end method
