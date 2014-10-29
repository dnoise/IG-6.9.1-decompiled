.class public final Lcom/instagram/feed/c/r;
.super Ljava/lang/Object;
.source "VideoInsightsEventBuilder.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/instagram/feed/g/a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Long;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:D

.field private n:Ljava/lang/Boolean;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/instagram/feed/c/r;->i:I

    .line 53
    iput v0, p0, Lcom/instagram/feed/c/r;->j:I

    .line 54
    iput v0, p0, Lcom/instagram/feed/c/r;->k:I

    .line 55
    iput v0, p0, Lcom/instagram/feed/c/r;->l:I

    .line 56
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/instagram/feed/c/r;->m:D

    .line 68
    iput-object p1, p0, Lcom/instagram/feed/c/r;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/instagram/feed/c/r;->b:Lcom/instagram/feed/g/a;

    .line 70
    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "ad"

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "organic"

    goto :goto_0

    .line 78
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method private static b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ai()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-static {p0, p1}, Lcom/instagram/feed/c/g;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 171
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 172
    const-string v0, "MEDIA_ERROR_UNKNOWN"

    .line 176
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/16 v0, 0x64

    if-ne p0, v0, :cond_1

    .line 174
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/common/l/a/f;->b(Z)V

    .line 183
    const/16 v0, -0x3ec

    if-ne p0, v0, :cond_1

    .line 184
    const-string v0, "MEDIA_ERROR_IO"

    .line 192
    :goto_1
    return-object v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/16 v0, -0x3ef

    if-ne p0, v0, :cond_2

    .line 186
    const-string v0, "MEDIA_ERROR_MALFORMED"

    goto :goto_1

    .line 187
    :cond_2
    const/16 v0, -0x3f2

    if-ne p0, v0, :cond_3

    .line 188
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_1

    .line 189
    :cond_3
    const/16 v0, -0x6e

    if-ne p0, v0, :cond_4

    .line 190
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_1

    .line 192
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/instagram/common/analytics/b;
    .locals 8

    .prologue
    const/high16 v7, 0x447a

    const/4 v6, -0x1

    .line 197
    new-instance v1, Lcom/instagram/common/analytics/b;

    iget-object v0, p0, Lcom/instagram/feed/c/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/feed/c/r;->b:Lcom/instagram/feed/g/a;

    invoke-direct {v1, v0, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    .line 199
    iget-object v0, p0, Lcom/instagram/feed/c/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "m_pk"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "a_pk"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/c/r;->h:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 206
    const-string v0, "m_ts"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/c/r;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "tracking_token"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/instagram/feed/c/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 212
    const-string v0, "follow_status"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 214
    :cond_4
    iget v0, p0, Lcom/instagram/feed/c/r;->i:I

    if-eq v0, v6, :cond_5

    .line 215
    const-string v0, "m_ix"

    iget v2, p0, Lcom/instagram/feed/c/r;->i:I

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/instagram/feed/c/r;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 218
    const-string v0, "response"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 220
    :cond_6
    iget v0, p0, Lcom/instagram/feed/c/r;->j:I

    if-eq v0, v6, :cond_7

    .line 221
    const-string v0, "time"

    iget v2, p0, Lcom/instagram/feed/c/r;->j:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    .line 223
    :cond_7
    iget v0, p0, Lcom/instagram/feed/c/r;->k:I

    if-eq v0, v6, :cond_8

    .line 224
    const-string v0, "duration"

    iget v2, p0, Lcom/instagram/feed/c/r;->k:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    .line 226
    :cond_8
    iget-wide v2, p0, Lcom/instagram/feed/c/r;->m:D

    const-wide/high16 v4, -0x4010

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_9

    .line 227
    const-string v0, "timeAsPercent"

    iget-wide v2, p0, Lcom/instagram/feed/c/r;->m:D

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/instagram/feed/c/r;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 230
    const-string v2, "playing_audio"

    iget-object v0, p0, Lcom/instagram/feed/c/r;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 232
    :cond_a
    iget-object v0, p0, Lcom/instagram/feed/c/r;->q:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 233
    const-string v0, "original_start_reason"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 235
    :cond_b
    iget-object v0, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 236
    const-string v0, "reason"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 238
    :cond_c
    iget-object v0, p0, Lcom/instagram/feed/c/r;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 239
    const-string v2, "initial"

    iget-object v0, p0, Lcom/instagram/feed/c/r;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 241
    :cond_d
    iget v0, p0, Lcom/instagram/feed/c/r;->l:I

    if-eq v0, v6, :cond_e

    .line 242
    const-string v0, "lsp"

    iget v2, p0, Lcom/instagram/feed/c/r;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    .line 244
    :cond_e
    iget-object v0, p0, Lcom/instagram/feed/c/r;->s:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 245
    const-string v0, "system_volume"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 247
    :cond_f
    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-nez v0, :cond_10

    .line 248
    const-string v0, "production_build"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 251
    :cond_10
    const-string v0, "a_i"

    iget-object v2, p0, Lcom/instagram/feed/c/r;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    .line 253
    return-object v1

    .line 230
    :cond_11
    const-string v0, "0"

    goto :goto_0

    .line 239
    :cond_12
    const-string v0, "0"

    goto :goto_1
.end method

.method public final a(D)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/instagram/feed/c/r;->m:D

    .line 127
    return-object p0
.end method

.method public final a(I)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/instagram/feed/c/r;->i:I

    .line 107
    return-object p0
.end method

.method public final a(II)Lcom/instagram/feed/c/r;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 162
    invoke-static {p2}, Lcom/instagram/feed/c/r;->f(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 165
    invoke-static {p1}, Lcom/instagram/feed/c/r;->e(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    .line 167
    :cond_1
    return-object p0
.end method

.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/r;
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->c:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->d:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->h:Ljava/lang/Long;

    .line 98
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/user/c/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->f:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/instagram/feed/c/r;->b:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/r;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->e:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/instagram/feed/c/r;->b:Lcom/instagram/feed/g/a;

    invoke-static {p1, v0}, Lcom/instagram/feed/c/r;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->r:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/instagram/feed/c/r;->s:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/feed/c/r;
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->n:Ljava/lang/Boolean;

    .line 132
    return-object p0
.end method

.method public final b(I)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/instagram/feed/c/r;->j:I

    .line 117
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/instagram/feed/c/r;->q:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public final b(Z)Lcom/instagram/feed/c/r;
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/c/r;->o:Ljava/lang/Boolean;

    .line 137
    return-object p0
.end method

.method public final c(I)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/instagram/feed/c/r;->k:I

    .line 122
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/feed/c/r;->p:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public final d(I)Lcom/instagram/feed/c/r;
    .locals 0
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/instagram/feed/c/r;->l:I

    .line 142
    return-object p0
.end method
