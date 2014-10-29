.class public final Lcom/instagram/creation/video/a;
.super Ljava/lang/Object;
.source "ClipStackManager.java"

# interfaces
.implements Lcom/instagram/creation/video/i/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/instagram/creation/video/i/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/instagram/creation/video/i/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/instagram/creation/video/i/d;

    invoke-direct {v0}, Lcom/instagram/creation/video/i/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    .line 35
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    new-instance v1, Lcom/instagram/creation/video/b;

    invoke-direct {v1, p0}, Lcom/instagram/creation/video/b;-><init>(Lcom/instagram/creation/video/a;)V

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/d;->a(Lcom/instagram/creation/video/b/c;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/instagram/creation/video/a;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/creation/video/a;)Lcom/instagram/creation/video/i/d;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    return-object v0
.end method

.method private b(Lcom/instagram/creation/video/i/a;)V
    .locals 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding an existing clip "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/i/d;->a(Ljava/lang/Object;)Z

    .line 73
    iput-object p1, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    .line 74
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    .line 75
    return-void
.end method

.method static synthetic c(Lcom/instagram/creation/video/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/instagram/creation/video/i/a;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method public final a(II)Lcom/instagram/creation/video/i/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/instagram/creation/video/i/a;

    invoke-direct {v0}, Lcom/instagram/creation/video/i/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    .line 79
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/i/a;->a(J)V

    .line 80
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    sget v1, Lcom/instagram/creation/video/i/c;->a:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    .line 81
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p2}, Lcom/instagram/creation/video/i/a;->b(I)V

    .line 82
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    iget-object v1, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/d;->a(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    .line 84
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    .line 145
    invoke-interface {v0, p1}, Lcom/instagram/creation/video/c;->a(I)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    const-string v0, "hasImportedClips"

    iget-boolean v1, p0, Lcom/instagram/creation/video/a;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/c;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .locals 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    .line 132
    invoke-interface {v0, p1}, Lcom/instagram/creation/video/c;->c(Lcom/instagram/creation/video/i/a;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/c;

    .line 136
    invoke-interface {v0}, Lcom/instagram/creation/video/c;->c()V

    goto :goto_1

    .line 139
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/i/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/video/i/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/a;

    .line 66
    invoke-direct {p0, v0}, Lcom/instagram/creation/video/a;->b(Lcom/instagram/creation/video/i/a;)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/instagram/creation/video/a;->d:Z

    .line 225
    return-void
.end method

.method public final b()Lcom/instagram/creation/video/i/d;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const-string v0, "hasImportedClips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/a;->a(Z)V

    .line 61
    return-void
.end method

.method public final b(Lcom/instagram/creation/video/c;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/creation/video/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->c()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/i/a;

    .line 101
    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()I

    move-result v0

    sget v2, Lcom/instagram/creation/video/i/c;->a:I

    if-eq v0, v2, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->a()V

    .line 118
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    sget v1, Lcom/instagram/creation/video/i/c;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    .line 126
    iget-object v0, p0, Lcom/instagram/creation/video/a;->c:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->a()V

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->c()I

    move-result v0

    sget v1, Lcom/instagram/creation/video/i/c;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/i/c;->b:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 166
    invoke-virtual {v1}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 167
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v2, "ClipStackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when retrieving metadata: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    :goto_1
    const-string v0, "ClipStackManager"

    const-string v2, "No video file or too short; deleting"

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget v0, Lcom/instagram/creation/video/i/c;->d:I

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/i/a;->a(I)V

    .line 181
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->j()V

    goto :goto_0

    .line 177
    :cond_2
    const-string v0, "ClipStackManager"

    const-string v2, "No video file found"

    invoke-static {v0, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    invoke-static {}, Lcom/instagram/common/y/c/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/common/y/a;->a(Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/video/i/d;->b(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->d()Lcom/instagram/creation/video/i/a;

    move-result-object v0

    sget v1, Lcom/instagram/creation/video/i/c;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/i/a;->a(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->c()I

    move-result v0

    rsub-int v0, v0, 0x3a98

    return v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/instagram/creation/video/a;->l()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/instagram/creation/video/a;->a:Lcom/instagram/creation/video/i/d;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/d;->b()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/instagram/creation/video/a;->d:Z

    return v0
.end method
