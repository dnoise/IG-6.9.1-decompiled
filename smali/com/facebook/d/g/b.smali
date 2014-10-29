.class public final Lcom/facebook/d/g/b;
.super Ljava/lang/Object;
.source "RealtimeSinceBootClock.java"

# interfaces
.implements Lcom/facebook/d/g/a;


# static fields
.field private static final a:Lcom/facebook/d/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/facebook/d/g/b;

    invoke-direct {v0}, Lcom/facebook/d/g/b;-><init>()V

    sput-object v0, Lcom/facebook/d/g/b;->a:Lcom/facebook/d/g/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/facebook/d/g/b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/d/g/b;->a:Lcom/facebook/d/g/b;

    return-object v0
.end method


# virtual methods
.method public final now()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
