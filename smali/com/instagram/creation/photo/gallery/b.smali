.class public abstract Lcom/instagram/creation/photo/gallery/b;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/instagram/creation/photo/gallery/d;


# static fields
.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:I

.field protected c:Landroid/net/Uri;

.field protected d:Landroid/database/Cursor;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field private final g:Landroid/support/v4/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/c",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/instagram/creation/photo/gallery/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/instagram/creation/photo/gallery/b;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/support/v4/c/c;

    invoke-direct {v0}, Landroid/support/v4/c/c;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z

    .line 51
    iput p3, p0, Lcom/instagram/creation/photo/gallery/b;->b:I

    .line 52
    iput-object p2, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;

    .line 53
    iput-object p4, p0, Lcom/instagram/creation/photo/gallery/b;->e:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/instagram/creation/photo/gallery/b;->a:Landroid/content/ContentResolver;

    .line 55
    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/b;->d()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    .line 57
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    .line 58
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->a()V

    .line 65
    return-void
.end method

.method private static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/instagram/creation/photo/gallery/b;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 3
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/creation/photo/gallery/b;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/photo/gallery/b;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 88
    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    const-string v0, "BaseImageList"

    const-string v1, "id mismatch"

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->c:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;
.end method

.method public final a(I)Lcom/instagram/creation/photo/gallery/c;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/gallery/a;

    .line 121
    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    move-object v0, v1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 124
    :cond_1
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/instagram/creation/photo/gallery/b;->a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;

    move-result-object v0

    .line 128
    :goto_1
    iget-object v1, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    .line 125
    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/c;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/instagram/creation/photo/gallery/b;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 192
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 198
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;

    move-result-object v4

    .line 199
    if-eqz v4, :cond_0

    .line 200
    monitor-enter p0

    .line 201
    const/4 v1, -0x1

    :try_start_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 202
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 203
    invoke-virtual {p0, v4}, Lcom/instagram/creation/photo/gallery/b;->b(Landroid/database/Cursor;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_3

    .line 204
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/gallery/a;

    .line 205
    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p0, v4}, Lcom/instagram/creation/photo/gallery/b;->a(Landroid/database/Cursor;)Lcom/instagram/creation/photo/gallery/a;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/instagram/creation/photo/gallery/b;->g:Landroid/support/v4/c/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 194
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to get id in: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 202
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_4
    monitor-exit p0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->g()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iput-object v3, p0, Lcom/instagram/creation/photo/gallery/b;->a:Landroid/content/ContentResolver;

    .line 75
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    iput-object v3, p0, Lcom/instagram/creation/photo/gallery/b;->d:Landroid/database/Cursor;

    .line 79
    :cond_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/b;->f()Landroid/database/Cursor;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    monitor-enter p0

    .line 100
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Landroid/database/Cursor;)J
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()Landroid/database/Cursor;
.end method

.method protected final e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lcom/instagram/creation/photo/gallery/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, " ASC"

    .line 233
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
