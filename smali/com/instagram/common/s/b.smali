.class public final enum Lcom/instagram/common/s/b;
.super Ljava/lang/Enum;
.source "BuildType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/common/s/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/common/s/b;

.field public static final enum b:Lcom/instagram/common/s/b;

.field public static final enum c:Lcom/instagram/common/s/b;

.field private static d:Lcom/instagram/common/s/b;

.field private static final synthetic e:[Lcom/instagram/common/s/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/instagram/common/s/b;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/s/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/s/b;->a:Lcom/instagram/common/s/b;

    .line 12
    new-instance v0, Lcom/instagram/common/s/b;

    const-string v1, "INHOUSE"

    invoke-direct {v0, v1, v3}, Lcom/instagram/common/s/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/s/b;->b:Lcom/instagram/common/s/b;

    .line 13
    new-instance v0, Lcom/instagram/common/s/b;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v4}, Lcom/instagram/common/s/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/common/s/b;->c:Lcom/instagram/common/s/b;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/common/s/b;

    sget-object v1, Lcom/instagram/common/s/b;->a:Lcom/instagram/common/s/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/common/s/b;->b:Lcom/instagram/common/s/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/common/s/b;->c:Lcom/instagram/common/s/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/common/s/b;->e:[Lcom/instagram/common/s/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/instagram/common/s/b;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lcom/instagram/common/s/b;->e()V

    .line 21
    :cond_0
    sget-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/instagram/common/f/a;->a:Z

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/instagram/common/f/a;->b:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/instagram/common/f/a;->c:Z

    return v0
.end method

.method private static declared-synchronized e()V
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/instagram/common/s/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    monitor-exit v1

    return-void

    .line 31
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/instagram/common/s/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/instagram/common/s/b;->a:Lcom/instagram/common/s/b;

    sput-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 33
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/instagram/common/s/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    sget-object v0, Lcom/instagram/common/s/b;->b:Lcom/instagram/common/s/b;

    sput-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;

    goto :goto_0

    .line 36
    :cond_2
    sget-object v0, Lcom/instagram/common/s/b;->c:Lcom/instagram/common/s/b;

    sput-object v0, Lcom/instagram/common/s/b;->d:Lcom/instagram/common/s/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/s/b;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/instagram/common/s/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/s/b;

    return-object v0
.end method

.method public static values()[Lcom/instagram/common/s/b;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/instagram/common/s/b;->e:[Lcom/instagram/common/s/b;

    invoke-virtual {v0}, [Lcom/instagram/common/s/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/common/s/b;

    return-object v0
.end method
