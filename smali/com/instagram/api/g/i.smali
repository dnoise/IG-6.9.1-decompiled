.class public final Lcom/instagram/api/g/i;
.super Ljava/lang/Object;
.source "NetworkTrace.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/instagram/api/g/a;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/api/g/i;->d:Z

    .line 65
    iput-wide v1, p0, Lcom/instagram/api/g/i;->i:J

    .line 66
    iput-wide v1, p0, Lcom/instagram/api/g/i;->j:J

    .line 67
    iput-wide v1, p0, Lcom/instagram/api/g/i;->k:J

    .line 68
    iput-wide v1, p0, Lcom/instagram/api/g/i;->l:J

    .line 69
    iput-wide v1, p0, Lcom/instagram/api/g/i;->m:J

    .line 70
    iput-wide v3, p0, Lcom/instagram/api/g/i;->n:J

    .line 71
    iput-wide v3, p0, Lcom/instagram/api/g/i;->o:J

    .line 72
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/instagram/api/g/i;->c:I

    .line 104
    return-void
.end method

.method final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/instagram/api/g/i;->i:J

    .line 128
    return-void
.end method

.method final a(Lcom/instagram/api/g/a;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/instagram/api/g/i;->h:Lcom/instagram/api/g/a;

    .line 185
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;

    .line 88
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/instagram/api/g/i;->d:Z

    .line 96
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/instagram/api/g/i;->j:J

    .line 136
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/instagram/api/g/i;->f:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/instagram/api/g/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/instagram/api/g/i;->k:J

    .line 144
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/instagram/api/g/i;->g:Ljava/lang/String;

    .line 120
    return-void
.end method

.method final d(J)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/instagram/api/g/i;->l:J

    .line 153
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/instagram/api/g/i;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/instagram/api/g/i;->c:I

    return v0
.end method

.method final e(J)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/instagram/api/g/i;->m:J

    .line 161
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/api/g/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method final f(J)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/instagram/api/g/i;->n:J

    .line 169
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/instagram/api/g/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g(J)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/instagram/api/g/i;->o:J

    .line 177
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/instagram/api/g/i;->i:J

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/instagram/api/g/i;->n:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/instagram/api/g/i;->o:J

    return-wide v0
.end method

.method public final k()Lcom/instagram/api/g/a;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/instagram/api/g/i;->h:Lcom/instagram/api/g/a;

    return-object v0
.end method

.method public final l()J
    .locals 4

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/instagram/api/g/i;->k:J

    iget-wide v2, p0, Lcom/instagram/api/g/i;->j:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final m()J
    .locals 4

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/instagram/api/g/i;->l:J

    iget-wide v2, p0, Lcom/instagram/api/g/i;->k:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final n()J
    .locals 4

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/instagram/api/g/i;->m:J

    iget-wide v2, p0, Lcom/instagram/api/g/i;->l:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final o()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 200
    iget-wide v0, p0, Lcom/instagram/api/g/i;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/api/g/i;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/api/g/i;->l:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/instagram/api/g/i;->m:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTrace(mRequestUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/api/g/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/g/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uploadingDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/g/i;->l()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/g/i;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/g/i;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
